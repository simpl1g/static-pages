class ParticipantsController < ApplicationController

  def new
    @participant = Participant.new
    @admin = Admin.find(session[:signed])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @participant }
    end
  end

  # GET /Participants/1/edit
  def edit
    @participant = Participant.find(params[:id])
    @admin = Admin.find(session[:signed])
  end

  # POST /Participants
  # POST /Participants.json
  def create
    @participant = Participant.new(params[:participant])
    @admin = Admin.find(session[:signed])
    respond_to do |format|
      if @participant.save
        format.html { redirect_to admin_path(session[:signed]), notice: 'Participant was successfully created.' }
        format.json { render json: @participant, status: :created, location: @participant }
      else
        format.html { render action: "new" }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Participants/1
  # PUT /Participants/1.json
  def update
    @participant = Participant.find(params[:id])
    @admin = Admin.find(session[:signed])
    respond_to do |format|
      if @participant.update_attributes(params[:participant])
        format.html { redirect_to admin_path(session[:signed]), notice: 'Participant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Participants/1
  # DELETE /Participants/1.json
  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy
    @admin = Admin.find(session[:signed])
    respond_to do |format|
      format.html { redirect_to @admin }
      format.json { head :no_content }
    end
  end
end
