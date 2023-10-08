class GreatGrandChildrenController < ApplicationController
  before_action :set_great_grand_child, only: %i[ show edit update destroy ]

  # GET /great_grand_children or /great_grand_children.json
  def index
    @great_grand_children = GreatGrandChild.all
  end

  # GET /great_grand_children/1 or /great_grand_children/1.json
  def show
  end

  # GET /great_grand_children/new
  def new
    @great_grand_child = GreatGrandChild.new
  end

  # GET /great_grand_children/1/edit
  def edit
  end

  # POST /great_grand_children or /great_grand_children.json
  def create
    @great_grand_child = GreatGrandChild.new(great_grand_child_params)

    respond_to do |format|
      if @great_grand_child.save
        format.html { redirect_to great_grand_child_url(@great_grand_child), notice: "Great grand child was successfully created." }
        format.json { render :show, status: :created, location: @great_grand_child }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @great_grand_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /great_grand_children/1 or /great_grand_children/1.json
  def update
    respond_to do |format|
      if @great_grand_child.update(great_grand_child_params)
        format.html { redirect_to great_grand_child_url(@great_grand_child), notice: "Great grand child was successfully updated." }
        format.json { render :show, status: :ok, location: @great_grand_child }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @great_grand_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /great_grand_children/1 or /great_grand_children/1.json
  def destroy
    @great_grand_child.destroy

    respond_to do |format|
      format.html { redirect_to great_grand_children_url, notice: "Great grand child was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_great_grand_child
      @great_grand_child = GreatGrandChild.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def great_grand_child_params
      params.require(:great_grand_child).permit(:first_name, :last_name, :gender, :grand_child_id)
    end
end
