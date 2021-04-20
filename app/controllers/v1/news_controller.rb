class V1::NewsController < V1Controller
  before_action(:current_user, only: [:create, :update, :publish, :destroy])
  before_action(:set_news, only: [:show, :update, :publish, :destroy])

  # GET /v1/news
  # URL_PATH v1_news_index_path
  def index
    if News.search.count > 0
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
          where.merge!({
            published_at: {
              gte: date.beginning_of_day,
              lte: date.end_of_day,
            }
          })
        rescue
          return render_simple_error("Data é inválida", 400)
        end
      end

      @news = News.search(
          query,
          where: where,
          page: page,
          per_page: per_page,
          order: { published_at: { order: 'desc', unmapped_type: 'long' } }
        )

      @total_objects = News.search(
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

  # GET /v1/news/:id
  # URL_PATH v1_news_path(id: 1)
  def show
  end

  # GET /v1/news
  # URL_PATH v1_news_path
  def create
    @news = News.new(news_params)

    @news.author_id = current_user.id

    if @news.save
      render :show
    else
      resource_errors = ResourceErrors.new(@news)
      render(
        json: { error: resource_errors.formatted_errors[:error].first },
        status: 422
      )
    end
  end

  # PUT/PATCH /v1/news/:id
  # URL_PATH v1_news_path(id: 1)
  def update
    # raise "Breakpoint"
    if params[:news].present? and params[:news][:cover].blank?
      params[:news].delete(:cover)
    end

    if @news.update(news_params)
      render :show
    else
      resource_errors = ResourceErrors.new(@news)
      render(
        json: { error: resource_errors.formatted_errors[:error].first },
        status: 422
      )
    end
  end

  # PUT /v1/news/:id/publish
  # URL_PATH publish_v1_news_path(id: 1)
  def publish
    @news.published = true
    @news.published_at = Time.now

    if @news.save
      render :show
    else
      resource_errors = ResourceErrors.new(@news)
      render(
        json: { error: resource_errors.formatted_errors[:error].first },
        status: 422
      )
    end
  end

  # DELETE /v1/news/:id
  # URL_PATH v1_news_path(id: 1)
  def destroy
    if @news.destroy
      render json: {}
    else
      resource_errors = ResourceErrors.new(@news)
      render(
        json: { error: resource_errors.formatted_errors[:error].first },
        status: 422
      )
    end
  end

  private

  def set_news
    @news = News.find_by_id(params[:id])
    unless @news
      return render_simple_error("#{News.model_name.human} não encontrada", 404)
    end
  end

  def news_params
    params.require(:news).permit(
      :cover,
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
