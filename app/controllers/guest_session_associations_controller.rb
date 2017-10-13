class GuestSessionAssociationsController < ApplicationController
  before_action :set_guest_session_association, only: [:show, :edit, :update, :destroy]

  # GET /guest_session_associations
  # GET /guest_session_associations.json
  def index
    @guest_session_associations = GuestSessionAssociation.all
  end

  # GET /guest_session_associations/1
  # GET /guest_session_associations/1.json
  def show
  end

  # GET /guest_session_associations/new
  def new
    @guest_session_association = GuestSessionAssociation.new
  end

  # GET /guest_session_associations/1/edit
  def edit
  end

  # POST /guest_session_associations
  # POST /guest_session_associations.json
  def create
    @guest_session_association = GuestSessionAssociation.new(guest_session_association_params)

    respond_to do |format|
      if @guest_session_association.save
        format.html { redirect_to @guest_session_association, notice: 'Guest session association was successfully created.' }
        format.json { render :show, status: :created, location: @guest_session_association }
      else
        format.html { render :new }
        format.json { render json: @guest_session_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guest_session_associations/1
  # PATCH/PUT /guest_session_associations/1.json
  def update
    respond_to do |format|
      if @guest_session_association.update(guest_session_association_params)
        format.html { redirect_to @guest_session_association, notice: 'Guest session association was successfully updated.' }
        format.json { render :show, status: :ok, location: @guest_session_association }
      else
        format.html { render :edit }
        format.json { render json: @guest_session_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guest_session_associations/1
  # DELETE /guest_session_associations/1.json
  def destroy
    @guest_session_association.destroy
    respond_to do |format|
      format.html { redirect_to guest_session_associations_url, notice: 'Guest session association was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest_session_association
      @guest_session_association = GuestSessionAssociation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_session_association_params
      params.require(:guest_session_association).permit(:user_id, :session_id, :player)
    end
end
