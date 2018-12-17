class StatsController < OpenReadController
  before_action :set_stat, only: [:show, :update, :destroy]

  # GET /stats
  def index
    @stats = Stat.all

    render json: @stats, include: ['user']
  end

  # GET /stats/1
  def show
    render json: @stat, include: ['user']
  end

  # POST /stats
  def create
    @stat = current_user.stats.new(stat_params)

    if @stat.save
      render json: @stat, status: :created, location: @stat
    else
      render json: @stat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stats/1
  def update
    if @stat.update(stat_params)
      render json: @stat
    else
      render json: @stat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stats/1
  def destroy
    @stat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stat
      @stat = Stat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stat_params
      params.require(:stat).permit(:rank, :player, :position, :age, :team, :games_played, :games_started, :minutes, :fg, :fga, :fg_percentage, :three_pointers, :three_point_attempts, :three_point_percentage, :two_pointers, :two_point_attempts, :two_point_percentage, :eFG, :ft, :fta, :ftp, :orb, :drb, :trb, :ast, :stl, :blk, :tov, :pf, :points)
    end
end
