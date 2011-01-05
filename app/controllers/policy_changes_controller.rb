class PolicyChangesController < ApplicationController
  # GET /policy_changes
  # GET /policy_changes.xml
  def index
    @policy_changes = PolicyChange.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @policy_changes }
    end
  end

  # GET /policy_changes/1
  # GET /policy_changes/1.xml
  def show
    @policy_change = PolicyChange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @policy_change }
    end
  end

  # GET /policy_changes/new
  # GET /policy_changes/new.xml
  def new
    @policy_change = PolicyChange.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @policy_change }
    end
  end

  # GET /policy_changes/1/edit
  def edit
    @policy_change = PolicyChange.find(params[:id])
  end

  # POST /policy_changes
  # POST /policy_changes.xml
  def create
    @policy_change = PolicyChange.new(params[:policy_change])

    respond_to do |format|
      if @policy_change.save
        format.html { redirect_to(@policy_change, :notice => 'Policy change was successfully created.') }
        format.xml  { render :xml => @policy_change, :status => :created, :location => @policy_change }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @policy_change.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /policy_changes/1
  # PUT /policy_changes/1.xml
  def update
    @policy_change = PolicyChange.find(params[:id])

    respond_to do |format|
      if @policy_change.update_attributes(params[:policy_change])
        format.html { redirect_to(@policy_change, :notice => 'Policy change was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @policy_change.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /policy_changes/1
  # DELETE /policy_changes/1.xml
  def destroy
    @policy_change = PolicyChange.find(params[:id])
    @policy_change.destroy

    respond_to do |format|
      format.html { redirect_to(policy_changes_url) }
      format.xml  { head :ok }
    end
  end
end
