class ObservationHomeElementsController < ApplicationController
  # GET /observation_home_elements
  # GET /observation_home_elements.json
  def index
    @observation_home_elements = ObservationHomeElement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @observation_home_elements }
    end
  end

  # GET /observation_home_elements/1
  # GET /observation_home_elements/1.json
  def show
    @observation_home_element = ObservationHomeElement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @observation_home_element }
    end
  end

  # GET /observation_home_elements/new
  # GET /observation_home_elements/new.json
  def new
    @observation_home_element = ObservationHomeElement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @observation_home_element }
    end
  end

  # GET /observation_home_elements/1/edit
  def edit
    @observation_home_element = ObservationHomeElement.find(params[:id])
  end

  # POST /observation_home_elements
  # POST /observation_home_elements.json
  def create
    @observation_home_element = ObservationHomeElement.new(params[:observation_home_element])

    respond_to do |format|
      if @observation_home_element.save
        format.html { redirect_to @observation_home_element, notice: 'Observation home element was successfully created.' }
        format.json { render json: @observation_home_element, status: :created, location: @observation_home_element }
      else
        format.html { render action: "new" }
        format.json { render json: @observation_home_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /observation_home_elements/1
  # PUT /observation_home_elements/1.json
  def update
    @observation_home_element = ObservationHomeElement.find(params[:id])

    respond_to do |format|
      if @observation_home_element.update_attributes(params[:observation_home_element])
        format.html { redirect_to @observation_home_element, notice: 'Observation home element was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @observation_home_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observation_home_elements/1
  # DELETE /observation_home_elements/1.json
  def destroy
    @observation_home_element = ObservationHomeElement.find(params[:id])
    @observation_home_element.destroy

    respond_to do |format|
      format.html { redirect_to observation_home_elements_url }
      format.json { head :no_content }
    end
  end
end
