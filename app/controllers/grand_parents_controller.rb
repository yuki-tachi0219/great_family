class GrandParentsController < ApplicationController
  before_action :set_grand_parent, only: %i[ show edit update destroy ]

  # GET /grand_parents or /grand_parents.json
  def index
    @grand_parents = GrandParent.all
  end

  # GET /grand_parents/1 or /grand_parents/1.json
  def show
  end

  # GET /grand_parents/new
  def new
    @grand_parent = GrandParent.new
  end

  # GET /grand_parents/1/edit
  def edit
  end

  # POST /grand_parents or /grand_parents.json
  def create
    @grand_parent = GrandParent.new(grand_parent_params)

    respond_to do |format|
      if @grand_parent.save
        format.html { redirect_to grand_parent_url(@grand_parent), notice: "Grand parent was successfully created." }
        format.json { render :show, status: :created, location: @grand_parent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grand_parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grand_parents/1 or /grand_parents/1.json
  def update
    respond_to do |format|
      if @grand_parent.update(grand_parent_params)
        format.html { redirect_to grand_parent_url(@grand_parent), notice: "Grand parent was successfully updated." }
        format.json { render :show, status: :ok, location: @grand_parent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grand_parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grand_parents/1 or /grand_parents/1.json
  def destroy
    @grand_parent.destroy

    respond_to do |format|
      format.html { redirect_to grand_parents_url, notice: "Grand parent was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grand_parent
      @grand_parent = GrandParent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grand_parent_params
      params.require(:grand_parent).permit(:first_name, :last_name, :gender, :great_grand_parent_id)
    end
end
