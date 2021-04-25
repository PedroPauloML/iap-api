class V1::MessagesController < V1Controller
  before_action(:current_user, only: [:create, :update, :publish, :destroy])
  before_action(:set_message, only: [:show, :update, :publish, :destroy])

  # GET /v1/messages
  # URL_PATH v1_messages_index_path
  def index
    if Message.search.count > 0
      query = (params[:query].present? ? params[:query] : "*")
      where = {}

      if params[:published].present?
        published = ActiveRecord::Type::Boolean.new.cast(params[:published])
        where.merge!({ published: published })
      else
        where.merge!({ published: true })
      end

      if params[:date].present?
        date = params[:date]
        begin
          date = date.to_date

          if where[:published]
            where.merge!({
              published_at: {
                gte: date.beginning_of_day,
                lte: date.end_of_day,
              }
            })
          else
            where.merge!({
              created_at: {
                gte: date.beginning_of_day,
                lte: date.end_of_day,
              }
            })
          end
        rescue
          return render_simple_error("Data é inválida", 400)
        end
      end

      @messages = Message.search(
          query,
          where: where,
          page: page,
          per_page: per_page,
          order: { published_at: { order: 'desc', unmapped_type: 'long' } }
        )

      @total_objects = Message.search(
          query,
          where: where,
          body_options: { track_total_hits: true }
        ).total_count
    else
      render(json: {
        objects: [],
        pagination: {
          current_page: page,
          total_objects: 0,
          per_page: per_page,
          total_pages: 0
        },
      })
    end
  end

  # GET /v1/messages/:id
  # URL_PATH v1_messages_path(id: 1)
  def show
  end

  # POST /v1/messages
  # URL_PATH v1_messages_path
  def create
    @message = Message.new(message_params)

    @message.author_id = current_user.id

    if @message.save
      render :show
    else
      resource_errors = ResourceErrors.new(@message)
      render(
        json: { error: resource_errors.formatted_errors[:error].first },
        status: 422
      )
    end
  end

  # PUT/PATCH /v1/messages/:id
  # URL_PATH v1_messages_path(id: 1)
  def update
    # raise "Breakpoint"
    if @message.update(message_params)
      render :show
    else
      resource_errors = ResourceErrors.new(@message)
      render(
        json: { error: resource_errors.formatted_errors[:error].first },
        status: 422
      )
    end
  end

  # PUT /v1/messages/:id/publish
  # URL_PATH publish_v1_messages_path(id: 1)
  def publish
    @message.published = true
    @message.published_at = Time.now

    if @message.save
      render :show
    else
      resource_errors = ResourceErrors.new(@message)
      render(
        json: { error: resource_errors.formatted_errors[:error].first },
        status: 422
      )
    end
  end

  # DELETE /v1/messages/:id
  # URL_PATH v1_messages_path(id: 1)
  def destroy
    if @message.destroy
      render json: {}
    else
      resource_errors = ResourceErrors.new(@message)
      render(
        json: { error: resource_errors.formatted_errors[:error].first },
        status: 422
      )
    end
  end

  private

  def set_message
    @message = Message.find_by_id(params[:id])
    unless @message
      return render_simple_error("#{Message.model_name.human} não encontrada", 404)
    end
  end

  def message_params
    params.require(:message).permit(
      :title,
      :caption,
      :content_html,
      :content_text,
      tags_attributes: [
        :id,
        :name,
        :_destroy
      ]
    )
  end
end
