require "faker"
require "open-uri"

puts "Cleaning database..."
Citizenship.destroy_all
Place.destroy_all
User.destroy_all

puts "Creating 1 user"


user = User.new( { name: "admin", password: "admin123456", email: "admin@evasion.com" } )

user.save!

puts "Creating 20 places"

bahamas = Place.new(
    name: "Bahamas",
    description: "The Bahamas (/bəˈhɑːməz/ (About this soundlisten)), known officially as the Commonwealth of The Bahamas,[12] is a country within the Lucayan Archipelago of the West Indies in the Caribbean. It takes up 97% of the Lucayan Archipelago's land area and is home to 88% of the archipelago's population. The archipelagic state consists of fewer than 700 islands, cays, and islets in the Atlantic Ocean, and is located north of Cuba and Hispaniola Island (Haiti and the Dominican Republic), northwest of the Turks and Caicos Islands, southeast of the US state of Florida, and east of the Florida Keys. The capital is Nassau on the island of New Providence. The Royal Bahamas Defence Force describes The Bahamas' territory as encompassing 470,000 km2 (180,000 sq mi) of ocean space.",
    min_income: [1000000000,1000000].sample
)

prefix = Rails.env.development? ? "../airbnb-tax-haven/app/assets/images/" : "/boats/"

file = URI.open('https://www.smartertravel.com/uploads/2020/01/nassau-atlantis-resort.jpg')
bahamas.thumbnail.attach(io: File.open(file), filename: 'bahamas.jpg', content_type: 'image/jpg')
bahamas.user = user
bahamas.save!

virgin = Place.new(
    name: "British Virgin Islands",
    description: "The British Virgin Islands (abbreviated BVI),[3] officially the Virgin Islands,[4] are a British Overseas Territory in the Caribbean, to the east of Puerto Rico and the U.S. Virgin Islands and north-west of Anguilla. The islands are geographically part of the Virgin Islands archipelago and are located in the Leeward Islands of the Lesser Antilles and part of the West Indies.
                The British Virgin Islands consist of the main islands of Tortola, Virgin Gorda, Anegada, and Jost Van Dyke, along with over 50 other smaller islands and cays.[5] About 16 of the islands are inhabited.[3] The capital, Road Town, is on Tortola, the largest island, which is about 20 km (12 mi) long and 5 km (3 mi) wide. The islands had a population of 2854 at the 2010 Census, of whom 23,491 lived on Tortola;[1] current estimates put the population at 35,802 (July 2018).[3]
                British Virgin Islanders are British Overseas Territories citizens and since 2002 are British citizens as well.",
    min_income: [1000000000,1000000].sample
)

file = URI.open('https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=1600&h=838&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F28%2F2017%2F03%2Fjost-van-dyke-british-virgin-islands-caribbean-BVI0310.jpg')
virgin.thumbnail.attach(io: File.open(file), filename: 'british-virgin-islands.jpg', content_type: 'image/jpg')
virgin.user = user
virgin.save!

bermuda = Place.new(
    name: "Bermuda",
    description: "Bermuda (/bərˈmjuːdə/) (in full, the Islands of Bermuda) is a British Overseas Territory in the North Atlantic Ocean. It is approximately 135 km (643 mi) east-southeast of Cape Hatteras, North Carolina (with Cape Point on Hatteras Island being the nearest landfall); 1,236 km (768 mi) south of Cape Sable Island, Nova Scotia; 1,759 km (193 mi) northeast of Cuba, and 1,538 km (956 mi) due north of the British Virgin Islands. Though it is typically referred to in the singular, Bermuda consists of 181 islands; the largest of these islands is known as Main Island. The capital city of Bermuda is Hamilton. Bermuda is internally self-governing, with its own constitution and cabinet of ministers selected from the elected Members of the lower house of a Parliament that enacts local laws. As the national government, the Government of the United Kingdom is ultimately responsible for ensuring good governance within British Overseas Territories, and retains responsibility for defence and foreign relations. As of July 2018, it has a population of 71,176, making it the most populous of the British overseas territories.[1] Bermuda's largest economic sectors are offshore insurance, reinsurance, and tourism.[4][5] Bermuda had one of the world's highest GDP per capita for most of the 20th century.[6]",
    min_income: [1000000000,1000000].sample
)

file = URI.open('https://www.gotobermuda.com/sites/default/files/styles/hero_wide/public/ber-island.jpg?itok=R-GNaVD0')
bermuda.thumbnail.attach(io: File.open(file), filename: 'bermuda.jpg', content_type: 'image/jpg')
bermuda.user = user
bermuda.save!

cayman = Place.new(
    name: "Cayman Islands",
    description: "The Cayman Islands (/ˈkeɪmən/ or /keɪˈmæn/) is an autonomous British Overseas Territory in the western Caribbean Sea. The 264-square-kilometre (102-square-mile) territory comprises the three islands of Grand Cayman, Cayman Brac and Little Cayman, which are located to the south of Cuba and northeast of Honduras, between Jamaica and Mexico's Yucatán Peninsula. The capital city is George Town on Grand Cayman, which is the most populous of the three islands.",
    min_income: [1000000000,1000000].sample
)
file = URI.open('https://cdn-image.departures.com/sites/default/files/styles/responsive_900x600/public/1551473630/cayman-islands-caribbean-CAYMAN0319.jpg?itok=zD8HiH9k')
cayman.thumbnail.attach(io: File.open(file), filename: 'cayman-islands.jpg', content_type: 'image/jpg')
cayman.user = user
cayman.save!

cook = Place.new(
    name: "Cook Islands",
    description: "The Cook Islands (Cook Islands Māori: Kūki 'Āirani)[6] is a self-governing island country in the South Pacific Ocean in free association with New Zealand. It comprises 15 islands whose total land area is 240 square kilometres (93 sq mi). The Cook Islands' Exclusive Economic Zone (EEZ) covers 1,96027 square kilometres (756,771 sq mi) of ocean.[7]
                New Zealand is responsible for the Cook Islands' defence and foreign affairs, but these responsibilities are exercised in consultation with the Cook Islands.[8] In recent times, the Cook Islands have adopted an increasingly independent foreign policy.[9] Cook Islanders are citizens of New Zealand, but they also have the status of Cook Islands nationals, which is not given to other New Zealand citizens. The Cook Islands has been an active member of the Pacific Community since 1980.",
    min_income: [1000000000,1000000].sample
)

file = URI.open('https://cookislands.travel/sites/default/files/2019-10/home_things_to_do_aitutaki.jpg')
cook.thumbnail.attach(io: File.open(file), filename: 'cook-islands.jpg', content_type: 'image/jpg')
cook.user = user
cook.save!

jersey = Place.new(
    name: "Islands of Jersey",
    description: "Jersey (/ˈdʒɜːrzi/ JUR-zee, French: [ʒɛʁzɛ] (About this soundlisten); Jèrriais: Jèrri [dʒɛri]), officially the Bailiwick of Jersey (French: Bailliage de Jersey; Jèrriais: Bailliage dé Jèrri), is a British Crown dependency[8] near the coast of Normandy, France.[9] It is the second-closest of the Channel Islands to France, after Alderney.
                Jersey was part of the Duchy of Normandy, whose dukes went on to become kings of England from 1066. After Normandy was lost by the kings of England in the 13th century, and the ducal title surrendered to France, Jersey and the other Channel Islands remained attached to the English crown.",
    min_income: [1000000000,1000000].sample
)

file = URI.open('https://cdn.britannica.com/89/140989-050-C58C985F/Lighthouse-Jersey-Channel-Islands.jpg')
jersey.thumbnail.attach(io: File.open(file), filename: 'islands-of-jersey.jpg', content_type: 'image/jpg')
jersey.user = user
jersey.save!

hk = Place.new(
    name: "Hong Kong",
    description: "Hong Kong (/ˌhɒŋˈkɒŋ/ (About this soundlisten); Chinese: 香港, Cantonese: [hœ́ːŋ.kɔ̌ːŋ] (About this soundlisten)), officially the Hong Kong Special Administrative Region of the People's Republic of China (HKSAR), is a metropolitan area and special administrative region of the People's Republic of China on the eastern Pearl River Delta of the South China Sea. With over 7.5 million people of various nationalities[d] in a 1,104-square-kilometre (426 sq mi) territory, Hong Kong is one of the most densely populated places in the world.",
    min_income: [1000000000,1000000].sample
)

file = URI.open('https://images.unsplash.com/photo-1536599018102-9f803c140fc1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80')
hk.thumbnail.attach(io: File.open(file), filename: 'hong-kong.jpg', content_type: 'image/jpg')
hk.user = user
hk.save!

licht = Place.new(
    name: "Lichtenstein",
    description: "Liechtenstein (/ˈlɪktənstaɪn/ (About this soundlisten) LIK-tən-styne; German: [ˈlɪçtn̩ʃtaɪn]), officially the Principality of Liechtenstein (German: Fürstentum Liechtenstein),[8] is a German-speaking microstate situated in the Alps and in the southwest of Central Europe.[9] The principality is a semi-constitutional monarchy headed by the Prince of Liechtenstein; the Prince's extensive powers are equivalent to those of a President in a semi-presidential system.",
    min_income: [1000000000,1000000].sample
)

file = URI.open('https://www.traveller.com.au/content/dam/images/h/1/h/s/r/n/image.related.articleLeadwide.620x349.h1hk50.png/1568342268009.jpg')
licht.thumbnail.attach(io: File.open(file), filename: 'lichtenstein.jpg', content_type: 'image/jpg')
licht.user = user
licht.save!

monaco = Place.new(
    name: "Monaco",
    description: "Monaco (/ˈmɒnəkoʊ/ (About this soundlisten); French pronunciation: ​[mɔnako][dubious – discuss]), officially the Principality of Monaco (French: Principauté de Monaco),[a] is a sovereign city-state, country, and microstate on the French Riviera in Western Europe. It is bordered by France to the north, east and west, and by the Mediterranean Sea to the south. The principality is home to 38,682 residents[10] and is widely recognised for being one of the most expensive and wealthiest places in the world. The official language is French, although Monégasque, English and Italian are spoken and understood by a sizeable group.[b]",
    min_income: [1000000000,1000000].sample
)
file = URI.open('https://www.visitmonaco.com/ImageRepository/PageListe/ebfef823-815b-45ad-b3c0-2339c85e8b0e/Slider/3-shutterstock-427693039.jpg?Width=1700&Height=850')
monaco.thumbnail.attach(io: File.open(file), filename: 'monaco.jpg', content_type: 'image/jpg')
monaco.user = user
monaco.save!

curacao = Place.new(
  name: 'Curaçao',
  description: "Curaçao (/ˈkjʊərəsoʊ, -saʊ, ˌkjʊərəˈsoʊ, -ˈsaʊ/ KEWR-əss-oh, -⁠ow, -⁠OH, -⁠OW,[7] Dutch: [kyraːˈsʌu, kur-] (About this soundlisten);[8] Papiamento: Kòrsou [ˈkɔrsɔu̯]) is a Lesser Antilles island country in the southern Caribbean Sea and the Dutch Caribbean region, about 65 km (40 mi) north of the Venezuelan coast. It is a constituent country (Dutch: land) of the Kingdom of the Netherlands.[9] Together with Aruba and Bonaire it forms the ABC islands. Collectively, Curaçao, Aruba, and other Dutch islands in the Caribbean are often called the Dutch Caribbean. The country was formerly part of the Curaçao and Dependencies colony from 1815–1954 and later the Netherlands Antilles from 1954–2010, as 'Island Territory of Curaçao'[10] (Dutch: Eilandgebied Curaçao, Papiamento: Teritorio Insular di Kòrsou) and is now formally called the Country of Curaçao (Dutch: Land Curaçao,[11] Papiamento: Pais Kòrsou).[12][13] It includes the main island of Curaçao and the much smaller, uninhabited island of Klein Curaçao ('Little Curaçao').[13] Curaçao has a population of 158,665[3] (January 2019 est.) and an area of 444 km2",
  min_income: [1000000000, 1000000].sample
)
file = URI.open('https://i.insider.com/5dc475ba7eece543e61b7bc4')
curacao.thumbnail.attach(io: File.open(file), filename: 'curacao.jpg', content_type: 'image/jpg')
curacao.user = user
curacao.save!

mauritius = Place.new(
  name: 'Mauritius',
  description: 'Mauritius (/məˈrɪʃ(i)əs, mɔːˈ-/ (About this soundlisten) mə-RISH-(ee-)əs, maw-; French: Maurice [mɔʁis, moʁis] (About this soundlisten); Creole: Moris [moʁis]), officially the Republic of Mauritius, is an island nation in the Indian Ocean about 200 kilometres (1,200 mi) off the south-east coast of the African continent. It includes the eponymous main island of Mauritius and Rodrigues, Agaléga and St. Brandon.[9][10] The islands of Mauritius and Rodrigues form part of the Mascarene Islands, along with nearby Réunion, a French overseas department. The capital and largest city, Port Louis, is located on Mauritius, where most of the population is concentrated. The country spans 2,040 square kilometres (790 sq mi) and has an Exclusive Economic Zone covering 2.3 million square kilometres.[11]',
  min_income: [1000000000, 1000000].sample
)

file = URI.open('https://i.insider.com/5dc475973afd3742f32e4cb4')
mauritius.thumbnail.attach(io: File.open(file), filename: 'mauritius.jpg', content_type: 'image/jpg')
mauritius.user = user
mauritius.save!

nauru = Place.new(
  name: 'Nauru',
  description: "Nauru (/nɑːˈuːruː/ nah-OO-roo[8] or /ˈnaʊruː/ NOW-roo;[9] Nauruan: Naoero), officially the Republic of Nauru (Nauruan: Repubrikin Naoero) and formerly known as Pleasant Island, is an island country and microstate in Micronesia, a subregion of Oceania, in the Central Pacific. Its nearest neighbour is Banaba Island in Kiribati, 300 km (190 mi) to the east. It further lies northwest of Tuvalu, 1,300 km (810 mi) northeast of the Solomon Islands,[10] east-northeast of Papua New Guinea, southeast of the Federated States of Micronesia and south of the Marshall Islands. With only a 21 km2 (8.1 sq mi) area, Nauru is the third-smallest country in the world behind Vatican City, and Monaco, making it the smallest republic. Additionally, its population of 10,670 is the world's second smallest, after Vatican City.",
  min_income: [1000000000, 1000000].sample
)

file = URI.open('https://i.insider.com/5dc475647eece5436349a7c7')
nauru.thumbnail.attach(io: File.open(file), filename: 'nauru.jpg', content_type: 'image/jpg')
nauru.user = user
nauru.save!

cyprus = Place.new(
  name: 'Cyprus',
  description: "Cyprus (/ˈsaɪprəs/ (About this soundlisten); Greek: Κύπρος [ˈcipros]; Turkish: Kıbrıs [ˈkɯbɾɯs]), officially called the Republic of Cyprus,[f][g] is an island country in the Eastern Mediterranean. The third largest[12] and third most populous[13] island in the Mediterranean, it is located south of Turkey; west of Syria and Lebanon; north of Egypt, Israel, and the Palestinian region of the Gaza Strip; and southeast of Greece. The earliest known human activity on the island dates to around the 10th millennium BC. Archaeological remains from this period include the well-preserved Neolithic village of Khirokitia, and Cyprus is home to some of the oldest water wells in the world.[14] Cyprus was settled by Mycenaean Greeks in two waves in the 2nd millennium BC. As a strategic location in the Middle East, it was subsequently occupied by several major powers, including the empires of the Assyrians, Egyptians and Persians, from whom the island was seized in 333 BC by Alexander the Great. Subsequent rule by Ptolemaic Egypt, the Classical and Eastern Roman Empire, Arab caliphates for a short period, the French Lusignan dynasty and the Venetians, was followed by over three centuries of Ottoman rule between 1571 and 1878 (de jure until 1914).[15]",
  min_income: [1000000000, 1000000].sample
)

file = URI.open('https://i.insider.com/5dc4751d7eece543190bc5e2')
cyprus.thumbnail.attach(io: File.open(file), filename: 'cyprus.jpg', content_type: 'image/jpg')
cyprus.user = user
cyprus.save!

seychelles = Place.new(
  name: 'Seychelles',
  description: "Seychelles (/seɪˈʃɛlz/ (About this soundlisten); French: [sɛʃɛl][7][8][9] or [seʃɛl][10]), officially the Republic of Seychelles (French: République des Seychelles; Creole: La Repiblik Sesel), is an archipelagic island country in the Indian Ocean at the eastern edge of the Somali Sea. The country consists of 115 islands. Its capital and largest city, Victoria, lies 1,500 kilometres (932 mi) east of mainland Africa. Other nearby island countries and territories include Comoros, Madagascar, Mauritius, and the French territories of Mayotte and Réunion to the south; as well as the Maldives and Chagos Archipelago to the east. With a population of roughly 94,367, it has the smallest population of any sovereign African country.[11] Seychelles was uninhabited prior to being encountered by Europeans in the 16th century. It faced competing French and British interests until coming under full British control in the late 19th century. Since proclaiming independence from the United Kingdom in 1976, Seychelles has developed from a largely agricultural society to a market-based diversified economy, characterized by rapidly rising service, public sector, and tourism activities. From 1976 until 2015, nominal GDP grew nearly sevenfold, and purchasing power parity increased nearly sixteenfold. Since the late 2010s, the government has taken steps to encourage foreign investment.",
  min_income: [1000000000, 1000000].sample
)

file = URI.open('https://i.insider.com/5dc4752c7eece5431f3ecb93')
seychelles.thumbnail.attach(io: File.open(file), filename: 'seychelles.jpg', content_type: 'image/jpg')
seychelles.user = user
seychelles.save!

malta = Place.new(
  name: 'Malta',
  description: "Malta (/ˈmɒltə/,[11] /ˈmɔːltə/ (About this soundlisten); Maltese: [ˈmɐltɐ]), officially known as the Republic of Malta (Maltese: Repubblika ta' Malta) and formerly Melita, is a Southern European island country consisting of an archipelago in the Mediterranean Sea.[12] It lies 80 km (50 mi) south of Italy, 284 km (176 mi) east of Tunisia,[13] and 333 km (207 mi) north of Libya.[14] With a population of about 515,000[4] over an area of 316 km2 (122 sq mi),[3] Malta is the world's tenth smallest country in area[15][16] and fourth most densely populated sovereign country. Its capital is Valletta, which is the smallest national capital in the European Union by area at 0.8 km2 (0.31 sq mi). The official and national language is Maltese, which is descended from Sicilian Arabic that developed during the Emirate of Sicily, while English serves as the second official language. Malta has been inhabited since approximately 5900 BC.[17] Its location in the centre of the Mediterranean[18] has historically given it great strategic importance as a naval base, with a succession of powers having contested and ruled the islands, including the Phoenicians and Carthaginians, Romans, Greeks, Arabs, Normans, Aragonese, Knights of St. John, French, and British.[19] Most of these foreign influences have left some sort of mark on the country's ancient culture.",
  min_income: [1000000000, 1000000].sample
)

file = URI.open('https://financemalta.org/app/uploads/2019/08/iStock-1152812253-1200x1200.jpg')
malta.thumbnail.attach(io: File.open(file), filename: 'malta.jpg', content_type: 'image/jpg')
malta.user = user
malta.save!

switzerland = Place.new(
  name: 'Switzerland',
  description: "Switzerland, officially the Swiss Confederation, is a country situated in the confluence of Western, Central, and Southern Europe.[12][note 4] It is a federal republic composed of 26 cantons, with federal authorities based in Bern.[1][2][note 1] Switzerland is a landlocked country bordered by Italy to the south, France to the west, Germany to the north, and Austria and Liechtenstein to the east. It is geographically divided among the Swiss Plateau, the Alps, and the Jura, spanning a total area of 41,285 km2 (15,940 sq mi), and land area of 39,997 km2 (15,443 sq mi). While the Alps occupy the greater part of the territory, the Swiss population of approximately 8.5 million is concentrated mostly on the plateau, where the largest cities and economic centres are located, among them Zürich, Geneva and Basel, where multiple international organisations are domiciled (such as FIFA, the UN's second-largest Office, and the Bank for International Settlements) and where the main international airports of Switzerland are.",
  min_income: [1000000000, 1000000].sample
)

file = URI.open('https://www.pixfan.com/wp-content/uploads/2017/09/brigitte_djajasasmita-01.jpg.webp')
switzerland.thumbnail.attach(io: File.open(file), filename: 'switzerland.jpg', content_type: 'image/jpg')
switzerland.user = user
switzerland.save!

luxembourg = Place.new(
  name: 'Luxembourg',
  description: "Luxembourg (/ˈlʌksəmbɜːrɡ/ (About this soundlisten) LUK-səm-burg;[6] Luxembourgish: Lëtzebuerg [ˈlətsəbuə̯ɕ] (About this soundlisten); French: Luxembourg; German: Luxemburg), officially the Grand Duchy of Luxembourg,[c] is a landlocked country in Western Europe. It is bordered by Belgium to the west and north, Germany to the east, and France to the south. Its capital, Luxembourg City, is one of the four official capitals of the European Union[7] (together with Brussels, Frankfurt, and Strasbourg) and the seat of the Court of Justice of the European Union, the highest judicial authority in the EU. Its culture, people, and languages are highly intertwined with its neighbours, making it essentially a mixture of French and German cultures, as evident by the nation's three official languages: French, German, and the national language of Luxembourgish. The repeated invasions by Germany, especially in World War II, resulted in the country's strong will for mediation between France and Germany and, among other things, led to the foundation of the European Union.[8]",
  min_income: [1000000000, 1000000].sample
)

file = URI.open('https://i.insider.com/5d713b3b2e22af509a07e9cd')
luxembourg.thumbnail.attach(io: File.open(file), filename: 'luxembourg.jpg', content_type: 'image/jpg')
luxembourg.user = user
luxembourg.save!

delaware = Place.new(
  name: 'Delaware',
  description: "Delaware (/ˈdɛləwɛər/ (About this soundlisten))[9] is one of the 50 states of the United States, in the Mid-Atlantic region.[a] It is bordered to the south and west by Maryland, north by Pennsylvania, and east by New Jersey and the Atlantic Ocean. The state takes its name from the nearby Delaware River (which has its river mouth in the state), itself named after Thomas West, 3rd Baron De La Warr, an English nobleman and Virginia's first colonial governor.[10] Delaware occupies the northeastern portion of the Delmarva Peninsula and some islands and territory within the Delaware River. It is the second smallest and sixth least populous state, but also the sixth most densely populated. Delaware's largest city is Wilmington, while the state capital is Dover, the second-largest city in the state. The state is divided into three counties, having the lowest number of any state. From north to south, they are New Castle County, Kent County, and Sussex County. While the southern two counties have historically been predominantly agricultural, New Castle County is more urbanized.",
  min_income: [1000000000, 1000000].sample
)

file = URI.open('https://www.businesssetup.com/sites/default/files/blog_images/why-delaware-is-the-ideal-place-to-set-up-your-business-in-us.jpg')
delaware.thumbnail.attach(io: File.open(file), filename: 'delaware.jpg', content_type: 'image/jpg')
delaware.user = user
delaware.save!

panama = Place.new(
  name: 'Panama',
  description: "Panama (/ˈpænəmɑː/ (About this soundlisten) PAN-ə-mah, /pænəˈmɑː/ pan-ə-MAH; Spanish: Panamá IPA: [panaˈma] (About this soundlisten)), officially the Republic of Panama (Spanish: República de Panamá), is a transcontinental country in Central America[10] and South America, bordered by Costa Rica to the west, Colombia to the southeast, the Caribbean Sea to the north, and the Pacific Ocean to the south. The capital and largest city is Panama City, whose metropolitan area is home to nearly half the country's 4 million people.[4][5] Panama was inhabited by indigenous tribes before Spanish colonists arrived in the 16th century. It broke away from Spain in 1821 and joined the Republic of Gran Colombia, a union of Nueva Granada, Ecuador, and Venezuela. After Gran Colombia dissolved in 1831, Panama and Nueva Granada eventually became the Republic of Colombia. With the backing of the United States, Panama seceded from Colombia in 1903, allowing the construction of the Panama Canal to be completed by the US Army Corps of Engineers between 1904 and 1914. The 1977 Torrijos–Carter Treaties led to the transfer of the Canal from the United States to Panama on December 31, 1999.[11]" ,
  min_income: [1000000000, 1000000].sample
)

file = URI.open('https://www.deginvest.de/Bilder-und-Grafiken/DEG/Au%C3%9Fenbueros/Panama-City_Satellit_Responsive_1280x520.jpg')
panama.thumbnail.attach(io: File.open(file), filename: 'panama.jpg', content_type: 'image/jpg')
panama.user = user
panama.save!


puts 'Finished!'
