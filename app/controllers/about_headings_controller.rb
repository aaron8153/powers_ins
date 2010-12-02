class AboutHeadingsController < ApplicationController
  # GET /about_headings
  # GET /about_headings.xml
  def index
    @about_headings = AboutHeading.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @about_headings }
    end
  end

  # GET /about_headings/1
  # GET /about_headings/1.xml
  def show
    @about_heading = AboutHeading.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @about_heading }
    end
  end

  # GET /about_headings/new
  # GET /about_headings/new.xml
  def new
    @about_heading = AboutHeading.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @about_heading }
    end
  end

  # GET /about_headings/1/edit
  def edit
    @about_heading = AboutHeading.find(params[:id])
  end

  # POST /about_headings
  # POST /about_headings.xml
  def create
    @about_heading = AboutHeading.new(params[:about_heading])

    respond_to do |format|
      if @about_heading.save
        format.html { redirect_to(@about_heading, :notice => 'About heading was successfully created.') }
        format.xml  { render :xml => @about_heading, :status => :created, :location => @about_heading }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @about_heading.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /about_headings/1
  # PUT /about_headings/1.xml
  def update
    @about_heading = AboutHeading.find(params[:id])

    respond_to do |format|
      if @about_heading.update_attributes(params[:about_heading])
        format.html { redirect_to(@about_heading, :notice => 'About heading was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @about_heading.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /about_headings/1
  # DELETE /about_headings/1.xml
  def destroy
    @about_heading = AboutHeading.find(params[:id])
    @about_heading.destroy

    respond_to do |format|
      format.html { redirect_to(about_headings_url) }
      format.xml  { head :ok }
    end
  end
end
