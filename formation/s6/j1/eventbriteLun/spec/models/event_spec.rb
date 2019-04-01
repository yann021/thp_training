require 'rails_helper'

RSpec.describe Event, type: :model do

before(:each) do 
    @event = Event.create(start_date: "2019-02-11 00:00:00 ", duration: "5", title: "le sale test", description: "bas voila c'est un test pour le principe", price: "50", location: "tkt c'est pas chere")
end

    describe "#start_date" do
      it "should not be valid without start_date" do
        bad_event = Event.create(duration: "5", title: "le sale test", description: "bas voila c'est un test pour le principe", price: "50", location: "tkt c'est pas chere")
        expect(bad_event).not_to be_valid
        # test très sympa qui permet de vérifier que la fameuse formule user.errors retourne bien un hash qui contient une erreur concernant le first_name. 
        expect(bad_event.errors.include?(:start_date)).to eq(true)
      end
    end
    
    describe "#duration" do
      it "not five multiple" do
        bad_event = Event.create(start_date: "2019-02-11 00:00:00 ", duration: "7", title: "le sale test", description: "bas voila c'est un test pour le principe", price: "50", location: "tkt c'est pas chere")
        expect(bad_event).not_to be_valid
        expect(bad_event.errors.include?(:duration)).to eq(true)
      end
    end
end