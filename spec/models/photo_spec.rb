require 'rails_helper'

RSpec.describe Photo, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:likes) }

    it { should belong_to(:users) }

    end

    describe "InDirect Associations" do

    it { should have_many(:stalkers) }

    end

    describe "Validations" do
      
    end
end
