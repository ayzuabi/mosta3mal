require 'spec_helper'
 
describe CarsController do
  describe 'index Listing' do
    it 'it should list all cars in case listall button is selected' do
	post :index, {:listall => 'listall'}
	get 'index'
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

  end
end
