class Car < ActiveRecord::Base
  def self.all_models
    %w(Matrix k5 sentra soul corolla-sedan tiida-hatchback elantra carens terios astra)
  end

  def self.all_makes
    %w(hyundai kia nissan toyota daihatsu opel)
  end

end

