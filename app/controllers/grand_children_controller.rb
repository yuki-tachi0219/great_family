class GrandChildrenController < ApplicationController
  before_action :set_grand_child, only: %i[ show edit update destroy ]

  # GET /grand_children or /grand_children.json
  def index
    @grand_children = GrandChild.all
  end

  # GET /grand_children/1 or /grand_children/1.json
  def show
  end

  # GET /grand_children/new
  def new
    @grand_child = GrandChild.new
  end

  # GET /grand_children/1/edit
  def edit
  end

  # POST /grand_children or /grand_children.json
  def create
    @grand_child = GrandChild.new(grand_child_params)

    respond_to do |format|
      if @grand_child.save
        format.html { redirect_to grand_child_url(@grand_child), notice: "Grand child was successfully created." }
        format.json { render :show, status: :created, location: @grand_child }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grand_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grand_children/1 or /grand_children/1.json
  def update
    respond_to do |format|
      if @grand_child.update(grand_child_params)
        format.html { redirect_to grand_child_url(@grand_child), notice: "Grand child was successfully updated." }
        format.json { render :show, status: :ok, location: @grand_child }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grand_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grand_children/1 or /grand_children/1.json
  def destroy
    @grand_child.destroy

    respond_to do |format|
      format.html { redirect_to grand_children_url, notice: "Grand child was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grand_child
      @grand_child = GrandChild.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grand_child_params
      params.require(:grand_child).permit(:first_name, :last_name, :gender, :child_id)
    end
end
