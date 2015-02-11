class UploadPicsController < ApplicationController
  # GET /upload_pics
  # GET /upload_pics.json
  def index

    @upload_pics = UploadPic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @upload_pics }
    end
  end

def dashboard

   #@upload_pics = UploadPic.all
   @upload_pics = UploadPic.where(:is_private => false)
   respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @upload_pics }
    end
   
end

  # GET /upload_pics/1
  # GET /upload_pics/1.json
  def show
    @upload_pic = UploadPic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @upload_pic }
    end
  end

  # GET /upload_pics/new
  # GET /upload_pics/new.json
  def new
    @upload_pic = UploadPic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @upload_pic }
    end
  end

  # GET /upload_pics/1/edit
  def edit
    @upload_pic = UploadPic.find(params[:id])
  end

  # POST /upload_pics
  # POST /upload_pics.json
  def create
    @upload_pic = UploadPic.new(params[:upload_pic])
    @upload_pic.user_id = current_user.id
    p @upload_pic.inspect
    p '--------------'
    respond_to do |format|
      if @upload_pic.save
        format.html { redirect_to @upload_pic, notice: 'Upload pic was successfully created.' }
        format.json { render json: @upload_pic, status: :created, location: @upload_pic }
      else
        format.html { render action: "new" }
        format.json { render json: @upload_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /upload_pics/1
  # PUT /upload_pics/1.json
  def update
    @upload_pic = UploadPic.find(params[:id])

    respond_to do |format|
      if @upload_pic.update_attributes(params[:upload_pic])
        format.html { redirect_to @upload_pic, notice: 'Upload pic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @upload_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upload_pics/1
  # DELETE /upload_pics/1.json
  def destroy
    @upload_pic = UploadPic.find(params[:id])
    @upload_pic.destroy

    respond_to do |format|
      format.html { redirect_to upload_pics_url }
      format.json { head :no_content }
    end
  end
end
