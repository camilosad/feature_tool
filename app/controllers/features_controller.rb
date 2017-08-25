class FeaturesController < LoggedInController
  before_action :set_feature, only: %i[show edit update destroy]

  def index
    @features = Feature.all
  end

  def show; end

  def new
    @feature = Feature.new
  end

  def edit; end

  def create
    @feature = Feature.new(feature_params)

    if @feature.save
      redirect_to @feature, notice: 'Feature was successfully created.'
    else
      render :new
    end
  end

  def update
    if @feature.update(feature_params)
      redirect_to @feature, notice: 'Feature was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @feature.destroy
    redirect_to features_url, notice: 'Feature was successfully destroyed.'
  end

  private

  def set_feature
    @feature = Feature.find(params[:id])
  end

  def feature_params
    params.require(:feature).permit(:user_id, :name, :description, :stakeholder, :documentation, :required_at)
  end
end
