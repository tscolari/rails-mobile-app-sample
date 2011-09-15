class NotesController < ApplicationController
  # GET /notes
  # GET /notes.json
  def index
    @notes = Note.all
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
    @note = Note.find(params[:id])
  end

  # GET /notes/new
  # GET /notes/new.json
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
    @note = Note.find(params[:id])
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(params[:note])

    if @note.save
      redirect_to @note, notice: 'Note was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /notes/1
  # PUT /notes/1.json
  def update
    @note = Note.find(params[:id])

    if @note.update_attributes(params[:note])
      redirect_to @note, notice: 'Note was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    redirect_to notes_url
  end
end
