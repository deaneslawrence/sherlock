    class HomeElementsController < ApplicationController
  # GET /home_elements
  # GET /home_elements.json
  def index
    @element_tree = Array.new()
    # get HEs with no parents
    @home_elements = HomeElement.where("id NOT IN (" +  HomeElementRelationship.select(:child_id).to_sql + ")")
    # loop top level
    @home_elements.each do |c|
      # build heirarchy array
      @element_branch = Array.new(1, c)
      if c.children != []
        @element_branch.insert(-1, c.children.to_a)
      end  
      @element_tree << @element_branch
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_elements }
    end
  end

  # GET /home_elements/1
  # GET /home_elements/1.json
  def show
    @home_element = HomeElement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_element }
    end
  end

  # GET /home_elements/new
  # GET /home_elements/new.json
  def new
    @home_element = HomeElement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_element }
    end
  end

  # GET /home_elements/1/edit
  def edit
    @home_element = HomeElement.find(params[:id])
  end

  # POST /home_elements
  # POST /home_elements.json
  def create
    @home_element = HomeElement.new(params[:home_element])

    respond_to do |format|
      if @home_element.save
        format.html { redirect_to @home_element, notice: 'Home element was successfully created.' }
        format.json { render json: @home_element, status: :created, location: @home_element }
      else
        format.html { render action: "new" }
        format.json { render json: @home_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home_elements/1
  # PUT /home_elements/1.json
  def update
    @home_element = HomeElement.find(params[:id])

    respond_to do |format|
      if @home_element.update_attributes(params[:home_element])
        format.html { redirect_to @home_element, notice: 'Home element was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_elements/1
  # DELETE /home_elements/1.json
  def destroy
    @home_element = HomeElement.find(params[:id])
    @home_element.destroy

    respond_to do |format|
      format.html { redirect_to home_elements_url }
      format.json { head :no_content }
    end
  end

  def top_lay
    @top_layer_elements = HomeElement.find(:all, :id => 1)
  end
end
