require 'rubygems'
require 'sinatra'
require 'erb'

get '/' do
  @insults = Haddock.insult!
  erb :haddock
end

class Haddock

  def self.insult!
    out = []
    3.times do
      out << self.add_line_breaks(self.insults[rand(self.insults.length)])
    end
    out
  end

  private
  def self.add_line_breaks(insult)
    if insult.length >= 35
      spaces_count = insult.scan(/\ /).count
      insult_array = insult.split(' ')
      insult_array[spaces_count/2] << "<br/>"
      insult = insult_array.join(' ')
    end
    insult
  end

  def self.insults
    ["Aardvark!", "Abecedarians!", "Aborigine!", "Addle-pated lumps of anthracite!", "Alcoholic !", "Anachronisms!", "Anacoluthons!", "Antediluvian bulldozer!", "Anthracite!", "Anthropithecus!", "Anthropophagus!", "Arabian Nightmare!", "Artichokes!", "Autocrats!", "Aztecs!", "Baboons!", "Baby-snatchers!", "Bagpipers!", "Bald-headed budgerigar!", "Bandits!", "Bashi-bazouks!", "Bath-tub Admiral!", "Beast!", "Belemnite!", "Big-head !", "Billions of blue blistering boiled and barbecued barnacles !", "Billions of billious barbecued blue blistering barnacles!", "Billions of Bilious Blue BlisteringBarnacles!", "Billions of bilious blue blistering barnacles in a thundering typhoon !", "Billions of Blue Blistering Barnacles!", "Black beetles!", "Black Marketers!", "Blackamoor!", "Blackbird!", "Blackguards!", "Blistering Barnacles!", "Blistereing blundering bird-brain !", "Bloodsuckers!", "Blue blistering barnacles!", "Blue Blistering Bell-Bottomed Balderdash!", "Blunderbuss!", "Bodysnatcher!", "Bootlegger!", "Borgia!", "Bougainvillea!", "Brat!", "Breathalyser!", "Brigands!", "Brutes!", "Bucaneers!", "Bully!", "Butcher!", "Cachinnating cockatoo!", "Cannibals!", "Carpetsellers!", "Caterpillars!", "Centipede!", "Cercopithecus!", "Coconut!", "Coelcanth!", "Colocynths!", "Corsair!", "Cowards!", "Crabapples!", "Cro-Magnon!", "Crooks!", "Cushion footed quadrupeds!", "Cyclotron!", "Diplodocus!", "Dogs!", "Doryphore!", "Doryphores!", "Duck-billed platypus!", "Dunderheaded coconuts!", "Dynamiter!", "Ectoplasms!", "Egoists!", "Fancy-dress Facist!", "Fancy-dress Fatima!", "Fancy-dress freebooter !", "Fatfaces!", "Filibuster!", "Fourlegged Cyrano!", "Freshwater pirate !", "Freshwater swabs!", "Fuzzy wuzzy!", "Gallows-fodder!", "Gangof Theives!", "Gangsters!", "Gibbering anthropoids!", "Great flat-footed grizzly bear!", "Gobbledgook!", "Gogglers!", "Goosecaps!", "Guano-gatherers!", "Gyroscope!", "Harlequin!", "Heretic!", "Highwayman!", "Hydrocarbon!", "Iconoclasts!", "Idiots!", "... you, Imitation Incas, you !", "You, interplantary goat, you !", "Jellied eel!", "Jellyfish!", "Jobbernowl!", "Kleptomaniacs!", "Koua Kouakouin Kouinkouin Koua Kouin Koua!", "Lily-livered landlubbers!", "Liquorice!", "Loathsome brute!", "Logarithim!", "Lubberscum!", "Macrocephalic baboon!", "Megacycle!", "Megacycle Pyromaniac!", "Mameluke!", "Miserable blundering barbecued blister!", "Miserable earth worms!", "Miserable miser!", "Miserable molecule of mildew!", "Misguided missles!", "MisterMule!", "Monopolizers!", "Monster!", "Morons!", "Moujiks!", "Mountebanks!", "Musical morons!", "Nanny Goat!", "Nitwits!", "Nitwitted ninepins!", "Nyctalops!", "Odd-toed ungulate!", "Ophicleides!", "Orangoutang!", "Ostrogoth!", "Pachyrhizus!", "Parasites!", "Patagonians!", "Pestilential Pachyderm!", "Phylloxera!", "Pickled herrings!", "Pirates!", "Pithecanthropic montebanks!", "Pithecanthropic pickpocket!", "Pithecanthropus!", "Pockmarks!", "Politican!", "Poltroons!", "Polygraphs!", "Polynesian!", "Profiteers!", "Psychopath!", "Purple profiteering jellyfish!", "Pyrographers!", "Pyromaniac!", "Raggle taggle ruminants!", "Rapscallion!", "Rats!", "Revenge!", "Rhizopods!", "RKRPXZKRMTFRZ!", "Road roller !", "Roadhogs!", "Saucy tramp!", "Savages!", "Scorpion!", "Sea-gherkin(s)!", "Sea-lice!", "Sea lion!", "Shipwreckers!", "Slavertrader!", "Slubberdegullions!", "Sparrows!", "Spitfire!", "Steamroller!", "Stoolpigeon!", "Subtropical sea-louse!", "Swine!", "Technocrat!", "Ten thousand thundering typhoons!", "Terrapins!", "Terrorists!", "Thundering typhoons!", "Tin hatted tyrants!", "Toads!", "Toffee-noses!", "Traitors!", "Tramps!", "Tribe of Polynesians!", "Troglodytes!", "Turncoats!", "Twister!", "Two-timing Troglodytes!", "Ungulate!", "Vandal!", "Vegetarian!", "Vermicellis!", "Viper!", "Visigoths!", "Vulture!", "Weevils!", "Whippersnapper!", "Wildcat!", "Woodlice!", "Young monkey!", "Zapotecs!"]
  end

end
