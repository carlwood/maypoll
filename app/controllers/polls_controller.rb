class PollsController < ApplicationController
  before_action :set_poll, only: %i[ show ]

  def index; end

  # GET /polls/new
  def new
    @poll = Poll.new
  end

  # POST /polls or /polls.json
  def create
    @poll = Poll.new(poll_params)

    respond_to do |format|
      if @poll.save
        format.html { redirect_to @poll, notice: "Poll was successfully created." }
        format.json { render :show, status: :created, location: @poll }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poll.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll
      @poll = Poll.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def poll_params
      params.require(:poll).permit(:question, :options, :type)
    end
end
