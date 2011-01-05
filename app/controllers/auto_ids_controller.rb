class AutoIdsController < ApplicationController
  # GET /auto_ids
  # GET /auto_ids.xml
  def index
    @auto_ids = AutoId.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @auto_ids }
    end
  end

  # GET /auto_ids/1
  # GET /auto_ids/1.xml
  def show
    @auto_id = AutoId.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @auto_id }
    end
  end

  # GET /auto_ids/new
  # GET /auto_ids/new.xml
  def new
    @auto_id = AutoId.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @auto_id }
    end
  end

  # GET /auto_ids/1/edit
  def edit
    @auto_id = AutoId.find(params[:id])
  end

  # POST /auto_ids
  # POST /auto_ids.xml
  def create
    @auto_id = AutoId.new(params[:auto_id])

    respond_to do |format|
      if @auto_id.save
        format.html { redirect_to(@auto_id, :notice => 'Auto was successfully created.') }
        format.xml  { render :xml => @auto_id, :status => :created, :location => @auto_id }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @auto_id.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /auto_ids/1
  # PUT /auto_ids/1.xml
  def update
    @auto_id = AutoId.find(params[:id])

    respond_to do |format|
      if @auto_id.update_attributes(params[:auto_id])
        format.html { redirect_to(@auto_id, :notice => 'Auto was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @auto_id.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /auto_ids/1
  # DELETE /auto_ids/1.xml
  def destroy
    @auto_id = AutoId.find(params[:id])
    @auto_id.destroy

    respond_to do |format|
      format.html { redirect_to(auto_ids_url) }
      format.xml  { head :ok }
    end
  end
end
