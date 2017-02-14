class BloggersController < InheritedResources::Base

  # GET /bloggers/new
  def new
    @blogger = Blogger.new
  end
    # POST /bloggers.json
  def create
    @blogger = Blogger.new(blogger_params)



    respond_to do |format|
      if @blogger.save
        format.html { redirect_to :back }
        format js
        format.json { render :show, status: :created, location: @blogger }
      else
        format.html { render :new }
        format.json { render json: @blogger.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /bloggers/1
  # DELETE /bloggers/1.json
  def destroy
    @blogger.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format js
      format.json { head :no_content }
    end
  end



  private

    def blogger_params
      params.require(:blogger).permit(:name, :tel, :account)
    end
end

