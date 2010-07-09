class TrimmersController < ApplicationController
  # GET /trimmers
  # GET /trimmers.xml
  def index
    @trimmers = Trimmer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @trimmers }
    end
  end

  # GET /trimmers/1
  # GET /trimmers/1.xml
  def show
    @trimmer = Trimmer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @trimmer }
    end
  end

  # GET /trimmers/new
  # GET /trimmers/new.xml
  def new
    @trimmer = Trimmer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @trimmer }
    end
  end

  # GET /trimmers/1/edit
  def edit
    @trimmer = Trimmer.find(params[:id])
  end

  # POST /trimmers
  # POST /trimmers.xml
  def create
    @trimmer = Trimmer.new(params[:trimmer])

    respond_to do |format|
      if @trimmer.save
        flash[:notice] = 'Trimmer was successfully created.'
        format.html { redirect_to(@trimmer) }
        format.xml  { render :xml => @trimmer, :status => :created, :location => @trimmer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @trimmer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trimmers/1
  # PUT /trimmers/1.xml
  def update
    @trimmer = Trimmer.find(params[:id])

    respond_to do |format|
      if @trimmer.update_attributes(params[:trimmer])
        flash[:notice] = 'Trimmer was successfully updated.'
        format.html { redirect_to(@trimmer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @trimmer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trimmers/1
  # DELETE /trimmers/1.xml
  def destroy
    @trimmer = Trimmer.find(params[:id])
    @trimmer.destroy

    respond_to do |format|
      format.html { redirect_to(trimmers_url) }
      format.xml  { head :ok }
    end
  end
end
