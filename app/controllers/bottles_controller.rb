class BottlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_bottle, only: [:show, :edit, :update, :destroy]

  # GET /bottles
  def index
    @bottles = Bottle.all
  end

  # GET /bottles/1
  def show
  end

  # GET /bottles/new
  def new
    @bottle = Bottle.new
  end

  # GET /bottles/1/edit
  def edit
  end

  # POST /bottles
  def create
    @bottle = Bottle.new(bottle_params)

    if @bottle.save
      redirect_to @bottle, notice: 'Bottle was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /bottles/1
  def update
    if @bottle.update(bottle_params)
      redirect_to @bottle, notice: 'Bottle was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /bottles/1
  def destroy
    @bottle.destroy
    redirect_to bottles_url, notice: 'Bottle was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bottle
      @bottle = Bottle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bottle_params
      params.fetch(:bottle, {})
    end
end
