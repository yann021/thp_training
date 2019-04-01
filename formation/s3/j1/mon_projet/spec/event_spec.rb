require_relative '../lib/event'

describe Event do
  before(:each) do
    Object.send(:remove_const, 'Event')
    load 'event.rb'
  end

	describe 'initializer' do
		it 'creates an event' do
			event = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
		 	expect(event.class).to eq(Event)
		end

		it 'test timer' do 
			event = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
			expect(event.start_date.class).to eq(Time)
		end

		it 'test length' do
			event = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
			expect(event.length.class).to eq(Integer)
		end

		it 'test title' do
			event = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
			expect(event.title.class).to eq(String)
		end

	end
end