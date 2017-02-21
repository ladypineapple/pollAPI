class PollsController < OpenReadController
  before_action :set_poll, only: [:update, :destroy]

  # GET /polls
  def index
    @polls = Poll.all

    render json: @polls
  end

  # GET /polls/1
  def show
    render json: Poll.find(params[:id])
  end

  # POST /polls
  def create
    @poll = current_user.polls.build(poll_params)
    if @poll.save
      render json: @poll, status: :created
    else
      render json: @poll.errors, status: :unprocessable_entity
    end
  end
  # PATCH/PUT /polls/1
  def update
    if @poll.update(poll_params)
      head :no_content
    else
      render json: @poll.errors, status: :unprocessable_entity
    end
  end

  # DELETE /polls/1
  def destroy
    @poll.destroy
    head :no_content
  end

  # private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll
      @poll = current_user.polls.find(params[:id])
    end
     private :set_poll
    # Only allow a trusted parameter "white list" through.
    def poll_params
      params.require(:poll).permit(:title, :question, :option1, :option2)
    end
    private :poll_params
  end
