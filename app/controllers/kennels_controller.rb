class KennelsController < ApplicationController
  # GET /kennels
  # GET /kennels.xml
  def index
    @kennels = Kennel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kennels }
    end
  end

  # GET /kennels/1
  # GET /kennels/1.xml
  def show
    @kennel = Kennel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kennel }
    end
  end

  # GET /kennels/new
  # GET /kennels/new.xml
  def new
    @kennel = Kennel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kennel }
    end
  end

  # GET /kennels/1/edit
  def edit
    @kennel = Kennel.find(params[:id])
  end

  # POST /kennels
  # POST /kennels.xml
  def create
    @kennel = Kennel.new(params[:kennel])

    respond_to do |format|
      if @kennel.save
        flash[:notice] = 'Kennel was successfully created.'
        format.html { redirect_to(@kennel) }
        format.xml  { render :xml => @kennel, :status => :created, :location => @kennel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kennel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kennels/1
  # PUT /kennels/1.xml
  def update
    @kennel = Kennel.find(params[:id])

    respond_to do |format|
      if @kennel.update_attributes(params[:kennel])
        flash[:notice] = 'Kennel was successfully updated.'
        format.html { redirect_to(@kennel) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kennel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kennels/1
  # DELETE /kennels/1.xml
  def destroy
    @kennel = Kennel.find(params[:id])
    @kennel.destroy

    respond_to do |format|
      format.html { redirect_to(kennels_url) }
      format.xml  { head :ok }
    end
  end
end
