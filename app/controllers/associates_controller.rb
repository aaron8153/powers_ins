class AssociatesController < ApplicationController
  # GET /associates
  # GET /associates.xml
  def index
    @producers = Associate.find_all_by_division('Producers', :order => 'position ASC' )
    @administrators = Associate.find_all_by_division('Administrative', :order => 'position ASC' )
    @benefits = Associate.find_all_by_division('Benefits', :order => 'position ASC' )
    @commercial = Associate.find_all_by_division('Commercial Lines', :order => 'position ASC' )
    @personal = Associate.find_all_by_division('Personal Lines', :order => 'position ASC' )
    
    @current_page = "associates"
    
    @keywords = "associates,producers,administrative,commercial,personal,info,contact,email"
  	@meta_desc = ""
  	@subtitle = " - Our Associates"
   render :layout => "full"
    
  end

  # GET /associates/1
  # GET /associates/1.xml
  def show
    @associate = Associate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @associate }
    end
  end

  # GET /associates/new
  # GET /associates/new.xml
  def new
    @associate = Associate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @associate }
    end
  end

  # GET /associates/1/edit
  def edit
    @associate = Associate.find(params[:id])
  end

  # POST /associates
  # POST /associates.xml
  def create
    @associate = Associate.new(params[:associate])

    respond_to do |format|
      if @associate.save
        format.html { redirect_to(@associate, :notice => 'Associate was successfully created.') }
        format.xml  { render :xml => @associate, :status => :created, :location => @associate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @associate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /associates/1
  # PUT /associates/1.xml
  def update
    @associate = Associate.find(params[:id])

    respond_to do |format|
      if @associate.update_attributes(params[:associate])
        format.html { redirect_to(@associate, :notice => 'Associate was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @associate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /associates/1
  # DELETE /associates/1.xml
  def destroy
    @associate = Associate.find(params[:id])
    @associate.destroy

    respond_to do |format|
      format.html { redirect_to(associates_url) }
      format.xml  { head :ok }
    end
  end
end
