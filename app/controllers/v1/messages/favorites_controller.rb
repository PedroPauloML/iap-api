class V1::Messages::FavoritesController < V1Controller
  before_action(:current_user)
  before_action(:set_message, except: [:index])

  # GET /v1/messages/favorites
  # URL_PATH favorites_v1_messages_path
  def index
    @total_objects = current_user.favorite_messages.count
    @page = page
    @per_page = per_page
    @total_pages = (@total_objects.to_f / @per_page.to_f).ceil

    @messages = current_user
      .favorite_messages
      .order(created_at: :desc)
      .offset((page.to_i - 1) * per_page.to_i)
      .limit(per_page)

    @favorites = Message::Favorite.where(
        user_id: current_user.id,
        message_id: @messages.collect(&:id)
      )
      .collect {|favorite| [favorite.message_id, favorite]}
      .to_h

    render(:index)
  end

  # POST /v1messages/:message_id/favorites
  # URL_PATH v1_message_favorite_path(message_id: 1)
  def create
    @favorite = Message::Favorite.find_or_initialize_by({
        message_id: @message.id,
        user_id: current_user.id
      })

    if @favorite.save
      render :show
    else
      resource_errors = ResourceErrors.new(@favorite)
      render(
        json: { error: resource_errors.formatted_errors[:error].first },
        status: 422
      )
    end
  end

  # DELETE /v1messages/:message_id/favorites/:id
  # URL_PATH v1_message_favorite_path(message_id: 1, id: 1)
  def destroy
    favorite = Message::Favorite.find_by({
        id: params[:id],
        message_id: @message.id,
        user_id: current_user.id
      })
    unless favorite
      return render_simple_error("#{Message.model_name.human} não encontrada", 404)
    end

    if favorite.destroy
      render json: {}
    else
      resource_errors = ResourceErrors.new(favorite)
      render(
        json: { error: resource_errors.formatted_errors[:error].first },
        status: 422
      )
    end
  end

  private

  def set_message
    @message = Message.find_by_id(params[:message_id])
    unless @message
      return render_simple_error("#{Message.model_name.human} não encontrada", 404)
    end
  end
end
