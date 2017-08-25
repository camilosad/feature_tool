class ScoresController < LoggedInController
  before_action :set_score, only: %i[show edit update destroy]

  def index
    @scores = Score.all
  end

  def show; end

  def new
    @score = Score.new
  end

  def edit; end

  def create
    @score = Score.new(score_params)

    if @score.save
      redirect_to @score, notice: 'Score was successfully created.'
    else
      render :new
    end
  end

  def update
    if @score.update(score_params)
      redirect_to @score, notice: 'Score was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @score.destroy
    redirect_to scores_url, notice: 'Score was successfully destroyed.'
  end

  private

  def set_score
    @score = Score.find(params[:id])
  end

  def score_params
    params.require(:score).permit(:measure_id, :feature_id, :user_id, :value)
  end
end
