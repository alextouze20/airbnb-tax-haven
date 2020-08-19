require "faker"

puts "Cleaning database..."
Citizenship.destroy_all
Place.destroy_all
User.destroy_all

puts "Create one user"


bahamas = Place.new(
    name: "Bahamas",
    description: "The Bahamas (/bəˈhɑːməz/ (About this soundlisten)), known officially as the Commonwealth of The Bahamas,[12] is a country within the Lucayan Archipelago of the West Indies in the Caribbean. It takes up 97% of the Lucayan Archipelago's land area and is home to 88% of the archipelago's population. The archipelagic state consists of fewer than 700 islands, cays, and islets in the Atlantic Ocean, and is located north of Cuba and Hispaniola Island (Haiti and the Dominican Republic), northwest of the Turks and Caicos Islands, southeast of the US state of Florida, and east of the Florida Keys. The capital is Nassau on the island of New Providence. The Royal Bahamas Defence Force describes The Bahamas' territory as encompassing 470,000 km2 (180,000 sq mi) of ocean space.",
    min_income: [1000000000,1000000,0].sample
)

file = "../airbnb-tax-haven/app/assets/images/bahamas.jpg"
bahamas.thumbnail.attach(io: File.open(file), filename: 'bahamas.jpg', content_type: 'image/jpg')
bahamas.user = user
bahamas.save!

virgin = Place.new(
    name: "British Virgin Islands",
    description: "The British Virgin Islands (abbreviated BVI),[3] officially the Virgin Islands,[4] are a British Overseas Territory in the Caribbean, to the east of Puerto Rico and the U.S. Virgin Islands and north-west of Anguilla. The islands are geographically part of the Virgin Islands archipelago and are located in the Leeward Islands of the Lesser Antilles and part of the West Indies.
                The British Virgin Islands consist of the main islands of Tortola, Virgin Gorda, Anegada, and Jost Van Dyke, along with over 50 other smaller islands and cays.[5] About 16 of the islands are inhabited.[3] The capital, Road Town, is on Tortola, the largest island, which is about 20 km (12 mi) long and 5 km (3 mi) wide. The islands had a population of 28,054 at the 2010 Census, of whom 23,491 lived on Tortola;[1] current estimates put the population at 35,802 (July 2018).[3]
                British Virgin Islanders are British Overseas Territories citizens and since 2002 are British citizens as well.",
    min_income: [1000000000,1000000,0].sample
)

file = "../airbnb-tax-haven/app/assets/images/british-virgin-islands.jpg"
virgin.thumbnail.attach(io: File.open(file), filename: 'british-virgin-islands.jpg', content_type: 'image/jpg')
virgin.user = user
virgin.save!

bermuda = Place.new(
    name: "Bermuda",
    description: "Bermuda (/bərˈmjuːdə/) (in full, the Islands of Bermuda) is a British Overseas Territory in the North Atlantic Ocean. It is approximately 1,035 km (643 mi) east-southeast of Cape Hatteras, North Carolina (with Cape Point on Hatteras Island being the nearest landfall); 1,236 km (768 mi) south of Cape Sable Island, Nova Scotia; 1,759 km (1,093 mi) northeast of Cuba, and 1,538 km (956 mi) due north of the British Virgin Islands. Though it is typically referred to in the singular, Bermuda consists of 181 islands; the largest of these islands is known as Main Island. The capital city of Bermuda is Hamilton. Bermuda is internally self-governing, with its own constitution and cabinet of ministers selected from the elected Members of the lower house of a Parliament that enacts local laws. As the national government, the Government of the United Kingdom is ultimately responsible for ensuring good governance within British Overseas Territories, and retains responsibility for defence and foreign relations. As of July 2018, it has a population of 71,176, making it the most populous of the British overseas territories.[1] Bermuda's largest economic sectors are offshore insurance, reinsurance, and tourism.[4][5] Bermuda had one of the world's highest GDP per capita for most of the 20th century.[6]",
    min_income: [1000000000,1000000,0].sample
)

file = "../airbnb-tax-haven/app/assets/images/bermuda.jpg"
bermuda.thumbnail.attach(io: File.open(file), filename: 'bermuda.jpg', content_type: 'image/jpg')
bermuda.user = user
bermuda.save!

cayman = Place.new(
    name: "Cayman Islands",
    description: "The Cayman Islands (/ˈkeɪmən/ or /keɪˈmæn/) is an autonomous British Overseas Territory in the western Caribbean Sea. The 264-square-kilometre (102-square-mile) territory comprises the three islands of Grand Cayman, Cayman Brac and Little Cayman, which are located to the south of Cuba and northeast of Honduras, between Jamaica and Mexico's Yucatán Peninsula. The capital city is George Town on Grand Cayman, which is the most populous of the three islands.",
    min_income: [1000000000,1000000,0].sample
)
file = "../airbnb-tax-haven/app/assets/images/cayman-islands.jpg"
cayman.thumbnail.attach(io: File.open(file), filename: 'cayman-islands.jpg', content_type: 'image/jpg')
cayman.user = user
cayman.save!

cook = Place.new(
    name: "Cook Islands",
    description: "The Cook Islands (Cook Islands Māori: Kūki 'Āirani)[6] is a self-governing island country in the South Pacific Ocean in free association with New Zealand. It comprises 15 islands whose total land area is 240 square kilometres (93 sq mi). The Cook Islands' Exclusive Economic Zone (EEZ) covers 1,960,027 square kilometres (756,771 sq mi) of ocean.[7]
                New Zealand is responsible for the Cook Islands' defence and foreign affairs, but these responsibilities are exercised in consultation with the Cook Islands.[8] In recent times, the Cook Islands have adopted an increasingly independent foreign policy.[9] Cook Islanders are citizens of New Zealand, but they also have the status of Cook Islands nationals, which is not given to other New Zealand citizens. The Cook Islands has been an active member of the Pacific Community since 1980.",
    min_income: [1000000000,1000000,0].sample
)

file = "../airbnb-tax-haven/app/assets/images/cook-islands.jpg"
cook.thumbnail.attach(io: File.open(file), filename: 'cook-islands.jpg', content_type: 'image/jpg')
cook.user = user
cook.save!

jersey = Place.new(
    name: "Islands of Jersey",
    description: "Jersey (/ˈdʒɜːrzi/ JUR-zee, French: [ʒɛʁzɛ] (About this soundlisten); Jèrriais: Jèrri [dʒɛri]), officially the Bailiwick of Jersey (French: Bailliage de Jersey; Jèrriais: Bailliage dé Jèrri), is a British Crown dependency[8] near the coast of Normandy, France.[9] It is the second-closest of the Channel Islands to France, after Alderney.
                Jersey was part of the Duchy of Normandy, whose dukes went on to become kings of England from 1066. After Normandy was lost by the kings of England in the 13th century, and the ducal title surrendered to France, Jersey and the other Channel Islands remained attached to the English crown.",
    min_income: [1000000000,1000000,0].sample
)

file = "../airbnb-tax-haven/app/assets/images/islands-of-jersey.jpg"
jersey.thumbnail.attach(io: File.open(file), filename: 'islands-of-jersey.jpg', content_type: 'image/jpg')
jersey.user = user
jersey.save!

hk = Place.new(
    name: "Hong Kong",
    description: "Hong Kong (/ˌhɒŋˈkɒŋ/ (About this soundlisten); Chinese: 香港, Cantonese: [hœ́ːŋ.kɔ̌ːŋ] (About this soundlisten)), officially the Hong Kong Special Administrative Region of the People's Republic of China (HKSAR), is a metropolitan area and special administrative region of the People's Republic of China on the eastern Pearl River Delta of the South China Sea. With over 7.5 million people of various nationalities[d] in a 1,104-square-kilometre (426 sq mi) territory, Hong Kong is one of the most densely populated places in the world.",
    min_income: [1000000000,1000000,0].sample
)

file = "../airbnb-tax-haven/app/assets/images/hong-kong.jpg"
hk.thumbnail.attach(io: File.open(file), filename: 'hong-kong.jpg', content_type: 'image/jpg')
hk.user = user
hk.save!

licht = Place.new(
    name: "Lichtenstein",
    description: "Liechtenstein (/ˈlɪktənstaɪn/ (About this soundlisten) LIK-tən-styne; German: [ˈlɪçtn̩ʃtaɪn]), officially the Principality of Liechtenstein (German: Fürstentum Liechtenstein),[8] is a German-speaking microstate situated in the Alps and in the southwest of Central Europe.[9] The principality is a semi-constitutional monarchy headed by the Prince of Liechtenstein; the Prince's extensive powers are equivalent to those of a President in a semi-presidential system.",
    min_income: [1000000000,1000000,0].sample
)

file = "../airbnb-tax-haven/app/assets/images/lichtenstein.jpg"
licht.thumbnail.attach(io: File.open(file), filename: 'lichtenstein.jpg', content_type: 'image/jpg')
licht.user = user
licht.save!

monaco = Place.new(
    name: "Monaco",
    description: "Monaco (/ˈmɒnəkoʊ/ (About this soundlisten); French pronunciation: ​[mɔnako][dubious – discuss]), officially the Principality of Monaco (French: Principauté de Monaco),[a] is a sovereign city-state, country, and microstate on the French Riviera in Western Europe. It is bordered by France to the north, east and west, and by the Mediterranean Sea to the south. The principality is home to 38,682 residents[10] and is widely recognised for being one of the most expensive and wealthiest places in the world. The official language is French, although Monégasque, English and Italian are spoken and understood by a sizeable group.[b]",
    min_income: [1000000000,1000000,0].sample
)
file = "../airbnb-tax-haven/app/assets/images/monaco.jpg"
monaco.thumbnail.attach(io: File.open(file), filename: 'monaco.jpg', content_type: 'image/jpg')
monaco.user = user
monaco.save!

puts 'Finished!'
