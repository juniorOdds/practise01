class FriendlistsController < ApplicationController
  before_action :set_friendlist, only: %i[ show edit update destroy ]

  # GET /friendlists or /friendlists.json
  def index
    @friendlists = Friendlist.all
  end

  # GET /friendlists/1 or /friendlists/1.json
  def show
  end

  # GET /friendlists/new
  def new
    @friendlist = Friendlist.new
  end

  # GET /friendlists/1/edit
  def edit
  end

  # POST /friendlists or /friendlists.json
  def create
    @friendlist = Friendlist.new(friendlist_params)

    respond_to do |format|
      if @friendlist.save
        format.html { redirect_to friendlist_url(@friendlist), notice: "Friendlist was successfully created." }
        format.json { render :show, status: :created, location: @friendlist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friendlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friendlists/1 or /friendlists/1.json
  def update
    respond_to do |format|
      if @friendlist.update(friendlist_params)
        format.html { redirect_to friendlist_url(@friendlist), notice: "Friendlist was successfully updated." }
        format.json { render :show, status: :ok, location: @friendlist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friendlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friendlists/1 or /friendlists/1.json
  def destroy
    @friendlist.destroy!

    respond_to do |format|
      format.html { redirect_to friendlists_url, notice: "Friendlist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendlist
      @friendlist = Friendlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friendlist_params
      params.require(:friendlist).permit(:name)
    end
end
