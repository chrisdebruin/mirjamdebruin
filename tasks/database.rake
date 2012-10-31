require './app.rb'
namespace :db  do
  desc "load polls"
  task :load_polls do
    poll1= Poll.first_or_create(:question=>"De klant weet wat wij kunnen.")
    create_options(poll1.id)

    poll2= Poll.first_or_create(:question=>"Wij kennen onze klanten al erg goed.")
    create_options(poll2.id)

    poll3= Poll.first_or_create(:question=>"De markt zit \"op slot\". We hoeven nu geen moeite te doen.")
    create_options(poll3.id)

    poll4= Poll.first_or_create(:question=>"De markt zit \"op slot\". Ik zie kansen voor het Kadaster.")
    create_options(poll4.id)

    poll5= Poll.first_or_create(:question=>"Als de klant al niet weet wat 'ie wil, hoe moet ik het dan weten?")
    create_options(poll5.id)

    poll6= Poll.first_or_create(:question=>"Wij bieden nog steeds boren aan, terwijl de klant alleen nog maar zei dat 'ie een gat wilde.")
    create_options(poll6.id)

    poll7= Poll.first_or_create(:question=>"Een klantrelatie kan heel goed alleen via digitale media (mail en sociale netwerken) worden onderhouden.")
    create_options(poll7.id)

    poll8= Poll.first_or_create(:question=>"Wij hoeven geen goede relatie met de klant. Ze nemen onze producten immers toch wel af.")
    create_options(poll8.id)

    poll9= Poll.first_or_create(:question=>"Onze klanten willen een relatie met de organisatie.")
    create_options(poll9.id)

    poll10= Poll.first_or_create(:question=>"Wij werken al goed samen om de klant optimaal te bedienen.")
    create_options(poll10.id)
  end
end

def create_options(poll_id) 
  return if poll_id.nil?
  Option.first_or_create(:poll_id=>poll_id,:description=>"mee eens")
  Option.first_or_create(:poll_id=>poll_id,:description=>"niet mee eens")
  Option.first_or_create(:poll_id=>poll_id,:description=>"geen mening")
end   