class CarsController < ApplicationController
  # GET /cars
  # GET /cars.json
  def index
@all_models= Car.all_models
@all_makes= Car.all_makes
@select_model=""
@select_make=""
if(params[:listall])
	@cars = Car.all
else
    if (params[:carmodel] and params[:carmake] ) and (params[:carmodel]!="" and params[:carmake]!="")
    @cars = Car.find(:all,:conditions => { :model => params[:carmodel], :make => params[:carmake]} )
    @selected_model=params[:carmodel]
    @selected_make=params[:carmake]
    elsif (params[:carmake] and params[:carmake]!="" )
    @cars = Car.find(:all,:conditions => { :make => params[:carmake] })
    @selected_model=""
    @selected_make=params[:carmake] 
    elsif (params[:carmodel] ) and (params[:carmodel]!="")
    @cars = Car.find(:all,:conditions => { :model => params[:carmodel]})
    @selected_model=params[:carmodel]
    @selected_make=""
    else
    @cars = Car.all
    end 
end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cars }
    end
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    @car = Car.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car }
    end
  end

  # GET /cars/new
  # GET /cars/new.json
  def new
@all_models= Car.all_models
@all_makes= Car.all_makes
    @car = Car.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car }
    end
  end

  # GET /cars/1/edit
  def edit
    @car = Car.find(params[:id])
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(params[:car])

    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render json: @car, status: :created, location: @car }
      else
        format.html { render action: "new" }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cars/1
  # PUT /cars/1.json
  def update
    @car = Car.find(params[:id])

    respond_to do |format|
      if @car.update_attributes(params[:car])
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    respond_to do |format|
      format.html { redirect_to cars_url }
      format.json { head :ok }
    end
  end
end
