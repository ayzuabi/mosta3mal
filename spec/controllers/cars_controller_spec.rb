require 'spec_helper'
 
describe CarsController do
  describe 'index Listing' do
    it 'it should list all cars in case no parameters in the page' do
	get 'index'
	assigns(:cars).should == Car.all
	end

    it 'it should list all cars in case listall button is selected' do
	post :index, {:listall => 'listall'}
	assigns(:cars).should == Car.all
	end

    it 'it should perform search by car make' do
	post :index, {:carmake => 'opel'}
	assigns(:cars).should == Car.find(:all,:conditions => { :make => 'opel' })
	end

    it 'it should perform search by car model' do
	post :index, {:carmodel => 'Matrix'}
	assigns(:cars).should == Car.find(:all,:conditions => { :model => 'Matrix' })
	end

    it 'it should perform search by both car model and car make' do
	post :index, {:carmodel => 'Matrix', :carmake => 'opel'}
	assigns(:cars).should == Car.find(:all,:conditions => { :model => 'Matrix', :make => 'hyundai' })
	end

    it 'it should show the car informaiton for the car with the id matching the id sent to the page' do
	post :show, {:id => '1'}
	assigns(:car).should == Car.find('1')
	end
  end
end
