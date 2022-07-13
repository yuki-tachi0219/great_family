class GreatGrandParentsController < ApplicationController
  before_action :set_great_grand_parent, only: %i[ show edit update destroy ]

  # GET /great_grand_parents or /great_grand_parents.json
  def index
    @great_grand_parents = GreatGrandParent.all
  end

  # GET /great_grand_parents/1 or /great_grand_parents/1.json
  def show
  end

  # GET /great_grand_parents/new
  def new
    @great_grand_parent = GreatGrandParent.new
  end

  # GET /great_grand_parents/1/edit
  def edit
  end

  # POST /great_grand_parents or /great_grand_parents.json
  def create
    @great_grand_parent = GreatGrandParent.new(great_grand_parent_params)

    respond_to do |format|
      if @great_grand_parent.save
        format.html { redirect_to great_grand_parent_url(@great_grand_parent), notice: "Great grand parent was successfully created." }
        format.json { render :show, status: :created, location: @great_grand_parent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @great_grand_parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /great_grand_parents/1 or /great_grand_parents/1.json
  def update
    respond_to do |format|
      if @great_grand_parent.update(great_grand_parent_params)
        format.html { redirect_to great_grand_parent_url(@great_grand_parent), notice: "Great grand parent was successfully updated." }
        format.json { render :show, status: :ok, location: @great_grand_parent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @great_grand_parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /great_grand_parents/1 or /great_grand_parents/1.json
  def destroy
    @great_grand_parent.destroy

    respond_to do |format|
      format.html { redirect_to great_grand_parents_url, notice: "Great grand parent was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_great_grand_parent
      @great_grand_parent = GreatGrandParent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def great_grand_parent_params
      params.require(:great_grand_parent).permit(:first_name, :last_name, :gender)
    end
end
