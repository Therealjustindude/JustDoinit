class DoinitsController < ApplicationController
  before_action :set_doinit, only: %i[ show edit update destroy ]
  include DoinitsHelper
  # GET /doinits or /doinits.json
  def index
    @doinits = Doinit.all
  end

  # GET /doinits/1 or /doinits/1.json
  def show
  end

  # GET /doinits/new
  def new
    @doinit = Doinit.new
  end

  # GET /doinits/1/edit
  def edit
  end

  # POST /doinits or /doinits.json
  def create
    @doinit = Doinit.new(doinit_params)
    @doinit = assign_post_creator(@doinit, current_user)
    respond_to do |format|
      if @doinit.save
        format.html { redirect_to @doinit, notice: "Doinit was successfully created." }
        format.json { render :show, status: :created, location: @doinit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @doinit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doinits/1 or /doinits/1.json
  def update
    respond_to do |format|
      if @doinit.update(doinit_params)
        format.html { redirect_to @doinit, notice: "Doinit was successfully updated." }
        format.json { render :show, status: :ok, location: @doinit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @doinit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doinits/1 or /doinits/1.json
  def destroy
    @doinit.destroy
    respond_to do |format|
      format.html { redirect_to doinits_url, notice: "Doinit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doinit
      @doinit = Doinit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doinit_params
      params.require(:doinit).permit(:title, :user_id, :importance)
    end
end
