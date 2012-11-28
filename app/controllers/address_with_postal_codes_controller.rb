class AddressWithPostalCodesController < ApplicationController
  # GET /address_with_postal_codes
  # GET /address_with_postal_codes.json
  def index
    @address_with_postal_codes = AddressWithPostalCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @address_with_postal_codes }
    end
  end

  # GET /address_with_postal_codes/1
  # GET /address_with_postal_codes/1.json
  def show
    @address_with_postal_code = AddressWithPostalCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @address_with_postal_code }
    end
  end

  # GET /address_with_postal_codes/new
  # GET /address_with_postal_codes/new.json
  def new
    @address_with_postal_code = AddressWithPostalCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @address_with_postal_code }
    end
  end

  # GET /address_with_postal_codes/1/edit
  def edit
    @address_with_postal_code = AddressWithPostalCode.find(params[:id])
  end

  # POST /address_with_postal_codes
  # POST /address_with_postal_codes.json
  def create
    @address_with_postal_code = AddressWithPostalCode.new(params[:address_with_postal_code])

    respond_to do |format|
      if @address_with_postal_code.save
        format.html { redirect_to @address_with_postal_code, notice: 'Address with postal code was successfully created.' }
        format.json { render json: @address_with_postal_code, status: :created, location: @address_with_postal_code }
      else
        format.html { render action: "new" }
        format.json { render json: @address_with_postal_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /address_with_postal_codes/1
  # PUT /address_with_postal_codes/1.json
  def update
    @address_with_postal_code = AddressWithPostalCode.find(params[:id])

    respond_to do |format|
      if @address_with_postal_code.update_attributes(params[:address_with_postal_code])
        format.html { redirect_to @address_with_postal_code, notice: 'Address with postal code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @address_with_postal_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_with_postal_codes/1
  # DELETE /address_with_postal_codes/1.json
  def destroy
    @address_with_postal_code = AddressWithPostalCode.find(params[:id])
    @address_with_postal_code.destroy

    respond_to do |format|
      format.html { redirect_to address_with_postal_codes_url }
      format.json { head :no_content }
    end
  end
end
