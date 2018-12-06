require 'rails_helper'

RSpec.describe Obsession, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:stalker) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
