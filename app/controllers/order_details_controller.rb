class OrderDetailsController < ApplicationController
  # GET /order_details
  # GET /order_details.json
  def index
    @order_details = OrderDetail.all
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @order_details }
    end
  end

  # GET /order_details/1
  # GET /order_details/1.json
  def show
    @order_detail = OrderDetail.find(params[:id])
    @products = Product.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order_detail }
    end
  end

  # GET /order_details/new
  # GET /order_details/new.json
  def new
    @order_detail = OrderDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order_detail }
    end
  end

  # GET /order_details/1/edit
  def edit
    @order_detail = OrderDetail.find(params[:id])
  end

  # POST /order_details
  # POST /order_details.json
  def create
    @order_detail = OrderDetail.new(params[:order_detail])

    respond_to do |format|
      if @order_detail.save
        format.html { redirect_to @order_detail, notice: 'Order detail was successfully created.' }
        format.json { render json: @order_detail, status: :created, location: @order_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @order_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /order_details/1
  # PUT /order_details/1.json
  def update
    @order_detail = OrderDetail.find(params[:id])

    respond_to do |format|
      if @order_detail.update_attributes(params[:order_detail])
        format.html { redirect_to @order_detail, notice: 'Order detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_details/1
  # DELETE /order_details/1.json
  def destroy
    @order_detail = OrderDetail.find(params[:id])
    @order_detail.destroy

    respond_to do |format|
      format.html { redirect_to order_details_url }
      format.json { head :no_content }
    end
  end

  def details_by_order_id
   # @order_detail = OrderDetail.find(1)
   # @products = Product.all

   # respond_to do |format|
   #   format.html # details_by_order_id.html.erb
   #   format.json { render json: @order_detail }
    
    @order_details = OrderDetail.where("OrderID = ?",params[:OrderID]).all
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @order_details }
    end


  end

  def update_cost

  cost = (params[:id] != -1 || params[:id] != nil ? Product.find(params[:id]).UnitPrice : "q ")
  render :partial => "cost", :locals => { :cost => cost }


  end
   
end
