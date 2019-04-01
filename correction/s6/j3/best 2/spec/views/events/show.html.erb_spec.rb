require 'rails_helper'

RSpec.describe "events/show.html.erb", type: :view do

	# Test de la présence du titre de l'event
  context 'it says welcome' do
	  it "displays 'event title'" do
	  	user = FactoryBot.create(:user)
	  	sign_in user
	  	@event = FactoryBot.create(:event)
	    render
	    expect(rendered).to have_content /My fucking conference/
	  end

	  # Test de la présence du bouton pour s'inscrire
	  it "displays 'inscris toi'" do
	  	user = FactoryBot.create(:user)
	  	sign_in user
	  	@event = FactoryBot.create(:event)
	    render
	    expect(rendered).to have_content /Inscris toi/
	  end

	end

end