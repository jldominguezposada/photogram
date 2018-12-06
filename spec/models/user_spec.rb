require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:obsessions_received) }

    it { should have_many(:obsessions_sent) }

    it { should have_many(:likes) }

    it { should have_many(:photos) }

    end

    describe "InDirect Associations" do

    it { should have_many(:stalkers) }

    it { should have_many(:victims) }

    it { should have_many(:feeds) }

    end

    describe "Validations" do
      
    end
end
