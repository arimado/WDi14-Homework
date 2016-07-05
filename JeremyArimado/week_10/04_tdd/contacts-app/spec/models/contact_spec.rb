require 'rails_helper'

RSpec.describe Contact, type: :model do

    # it "has a valid factory" do
    #     # byebug
    # end

    it "is valid with a first_name, last_name and an email" do
        contact = FactoryGirl.build :contact
        expect(contact).to be_valid
    end

    it "is invalid without a first_name" do
        contact = FactoryGirl.build :contact, :first_name => nil
        contact.valid?
        expect(contact.errors[:first_name]).to include("can't be blank");
    end

    it "is invalid without a last_name" do
        contact = FactoryGirl.build :contact, :last_name => nil
        contact.valid?
        expect(contact.errors[:last_name]).to include("can't be blank");
    end
    it "is invalid without an email" do
        contact = FactoryGirl.build :contact, :email => nil
        contact.valid?
        expect(contact.errors[:email]).to include("can't be blank");
    end
    it "is invalid without a duplicate email address" do
        contact1 = FactoryGirl.build :contact, :email => "Marx@ga.co"
        contact = FactoryGirl.build :contact, :email => "Marx@ga.co"
        contact.valid?
        expect(contact.errors[:email]).to include("has already been taken");
    end
    it "returns a contact's full name as a string" do
        contact = FactoryGirl.build :contact
        expect(contact.name).to eq "Gummo Marx"
    end

    context "filter last name by letter" do

        before :each do
            @smith = FactoryGirl.build :contact
            @jones = FactoryGirl.build :contact, :last_name => "Jones"
            @johns = FactoryGirl.build :contact, :last_name => "Jones"
        end

        it "returns a sorted array of contacts that match" do
            expect(Contact.by_letter("J")).to eq([@johns, @jones])
        end

        it "omit contacts who dont match" do
            expect(Contact.by_letter("J")).not_to include([@smith])
        end

    end

end
