class AddressCustomersController < ApplicationController
  # GET /address_customers
  # GET /address_customers.json
  def index
    @address_customers = AddressCustomer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @address_customers }
    end
  end

  # GET /address_customers/1
  # GET /address_customers/1.json
  def show
    @address_customer = AddressCustomer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @address_customer }
    end
  end

  # GET /address_customers/new
  # GET /address_customers/new.json
  def new
    @address_customer = AddressCustomer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @address_customer }
    end
  end

  # GET /address_customers/1/edit
  def edit
    @address_customer = AddressCustomer.find(params[:id])
  end

  # POST /address_customers
  # POST /address_customers.json
  def create
    @address_customer = AddressCustomer.new(params[:address_customer])

    respond_to do |format|
      if @address_customer.save
        format.html { redirect_to @address_customer, notice: 'Address customer was successfully created.' }
        format.json { render json: @address_customer, status: :created, location: @address_customer }
      else
        format.html { render action: "new" }
        format.json { render json: @address_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /address_customers/1
  # PUT /address_customers/1.json
  def update
    @address_customer = AddressCustomer.find(params[:id])

    respond_to do |format|
      if @address_customer.update_attributes(params[:address_customer])
        format.html { redirect_to @address_customer, notice: 'Address customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @address_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_customers/1
  # DELETE /address_customers/1.json
  def destroy
    @address_customer = AddressCustomer.find(params[:id])
    @address_customer.destroy

    respond_to do |format|
      format.html { redirect_to address_customers_url }
      format.json { head :no_content }
    end
  end
end
