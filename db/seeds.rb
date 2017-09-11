# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#LANGUAGES
languages = {
    "aa": {"name": "Afar", "native": "Afar"},
    "ab": {"name": "Abkhazian", "native": "Аҧсуа"},
    "af": {"name": "Afrikaans", "native": "Afrikaans"},
    "ak": {"name": "Akan", "native": "Akana"},
    "am": {"name": "Amharic", "native": "አማርኛ"},
    "an": {"name": "Aragonese", "native": "Aragonés"},
    "ar": {"name": "Arabic", "native": "العربية", "rtl": 1},
    "as": {"name": "Assamese", "native": "অসমীয়া"},
    "av": {"name": "Avar", "native": "Авар"},
    "ay": {"name": "Aymara", "native": "Aymar"},
    "az": {"name": "Azerbaijani", "native": "Azərbaycanca / آذربايجان"},
    "ba": {"name": "Bashkir", "native": "Башҡорт"},
    "be": {"name": "Belarusian", "native": "Беларуская"},
    "bg": {"name": "Bulgarian", "native": "Български"},
    "bh": {"name": "Bihari", "native": "भोजपुरी"},
    "bi": {"name": "Bislama", "native": "Bislama"},
    "bm": {"name": "Bambara", "native": "Bamanankan"},
    "bn": {"name": "Bengali", "native": "বাংলা"},
    "bo": {"name": "Tibetan", "native": "བོད་ཡིག / Bod skad"},
    "br": {"name": "Breton", "native": "Brezhoneg"},
    "bs": {"name": "Bosnian", "native": "Bosanski"},
    "ca": {"name": "Catalan", "native": "Català"},
    "ce": {"name": "Chechen", "native": "Нохчийн"},
    "ch": {"name": "Chamorro", "native": "Chamoru"},
    "co": {"name": "Corsican", "native": "Corsu"},
    "cr": {"name": "Cree", "native": "Nehiyaw"},
    "cs": {"name": "Czech", "native": "Česky"},
    "cu": {"name": "Old Church Slavonic / Old Bulgarian", "native": "словѣньскъ / slověnĭskŭ"},
    "cv": {"name": "Chuvash", "native": "Чăваш"},
    "cy": {"name": "Welsh", "native": "Cymraeg"},
    "da": {"name": "Danish", "native": "Dansk"},
    "de": {"name": "German", "native": "Deutsch"},
    "dv": {"name": "Divehi", "native": "ދިވެހިބަސް", "rtl": 1},
    "dz": {"name": "Dzongkha", "native": "ཇོང་ཁ"},
    "ee": {"name": "Ewe", "native": "Ɛʋɛ"},
    "el": {"name": "Greek", "native": "Ελληνικά"},
    "en": {"name": "English", "native": "English"},
    "eo": {"name": "Esperanto", "native": "Esperanto"},
    "es": {"name": "Spanish", "native": "Español"},
    "et": {"name": "Estonian", "native": "Eesti"},
    "eu": {"name": "Basque", "native": "Euskara"},
    "fa": {"name": "Persian", "native": "فارسی", "rtl": 1},
    "ff": {"name": "Peul", "native": "Fulfulde"},
    "fi": {"name": "Finnish", "native": "Suomi"},
    "fj": {"name": "Fijian", "native": "Na Vosa Vakaviti"},
    "fo": {"name": "Faroese", "native": "Føroyskt"},
    "fr": {"name": "French", "native": "Français"},
    "fy": {"name": "West Frisian", "native": "Frysk"},
    "ga": {"name": "Irish", "native": "Gaeilge"},
    "gd": {"name": "Scottish Gaelic", "native": "Gàidhlig"},
    "gl": {"name": "Galician", "native": "Galego"},
    "gn": {"name": "Guarani", "native": "Avañe'ẽ"},
    "gu": {"name": "Gujarati", "native": "ગુજરાતી"},
    "gv": {"name": "Manx", "native": "Gaelg"},
    "ha": {"name": "Hausa", "native": "هَوُسَ", "rtl": 1},
    "he": {"name": "Hebrew", "native": "עברית", "rtl": 1},
    "hi": {"name": "Hindi", "native": "हिन्दी"},
    "ho": {"name": "Hiri Motu", "native": "Hiri Motu"},
    "hr": {"name": "Croatian", "native": "Hrvatski"},
    "ht": {"name": "Haitian", "native": "Krèyol ayisyen"},
    "hu": {"name": "Hungarian", "native": "Magyar"},
    "hy": {"name": "Armenian", "native": "Հայերեն"},
    "hz": {"name": "Herero", "native": "Otsiherero"},
    "ia": {"name": "Interlingua", "native": "Interlingua"},
    "id": {"name": "Indonesian", "native": "Bahasa Indonesia"},
    "ie": {"name": "Interlingue", "native": "Interlingue"},
    "ig": {"name": "Igbo", "native": "Igbo"},
    "ii": {"name": "Sichuan Yi", "native": "ꆇꉙ / 四川彝语"},
    "ik": {"name": "Inupiak", "native": "Iñupiak"},
    "io": {"name": "Ido", "native": "Ido"},
    "is": {"name": "Icelandic", "native": "Íslenska"},
    "it": {"name": "Italian", "native": "Italiano"},
    "iu": {"name": "Inuktitut", "native": "ᐃᓄᒃᑎᑐᑦ"},
    "ja": {"name": "Japanese", "native": "日本語"},
    "jv": {"name": "Javanese", "native": "Basa Jawa"},
    "ka": {"name": "Georgian", "native": "ქართული"},
    "kg": {"name": "Kongo", "native": "KiKongo"},
    "ki": {"name": "Kikuyu", "native": "Gĩkũyũ"},
    "kj": {"name": "Kuanyama", "native": "Kuanyama"},
    "kk": {"name": "Kazakh", "native": "Қазақша"},
    "kl": {"name": "Greenlandic", "native": "Kalaallisut"},
    "km": {"name": "Cambodian", "native": "ភាសាខ្មែរ"},
    "kn": {"name": "Kannada", "native": "ಕನ್ನಡ"},
    "ko": {"name": "Korean", "native": "한국어"},
    "kr": {"name": "Kanuri", "native": "Kanuri"},
    "ks": {"name": "Kashmiri", "native": "कश्मीरी / كشميري", "rtl": 1},
    "ku": {"name": "Kurdish", "native": "Kurdî / كوردی", "rtl": 1},
    "kv": {"name": "Komi", "native": "Коми"},
    "kw": {"name": "Cornish", "native": "Kernewek"},
    "ky": {"name": "Kirghiz", "native": "Kırgızca / Кыргызча"},
    "la": {"name": "Latin", "native": "Latina"},
    "lb": {"name": "Luxembourgish", "native": "Lëtzebuergesch"},
    "lg": {"name": "Ganda", "native": "Luganda"},
    "li": {"name": "Limburgian", "native": "Limburgs"},
    "ln": {"name": "Lingala", "native": "Lingála"},
    "lo": {"name": "Laotian", "native": "ລາວ / Pha xa lao"},
    "lt": {"name": "Lithuanian", "native": "Lietuvių"},
    "lv": {"name": "Latvian", "native": "Latviešu"},
    "mg": {"name": "Malagasy", "native": "Malagasy"},
    "mh": {"name": "Marshallese", "native": "Kajin Majel / Ebon"},
    "mi": {"name": "Maori", "native": "Māori"},
    "mk": {"name": "Macedonian", "native": "Македонски"},
    "ml": {"name": "Malayalam", "native": "മലയാളം"},
    "mn": {"name": "Mongolian", "native": "Монгол"},
    "mo": {"name": "Moldovan", "native": "Moldovenească"},
    "mr": {"name": "Marathi", "native": "मराठी"},
    "ms": {"name": "Malay", "native": "Bahasa Melayu"},
    "mt": {"name": "Maltese", "native": "bil-Malti"},
    "my": {"name": "Burmese", "native": "Myanmasa"},
    "na": {"name": "Nauruan", "native": "Dorerin Naoero"},
    "nd": {"name": "North Ndebele", "native": "Sindebele"},
    "ne": {"name": "Nepali", "native": "नेपाली"},
    "ng": {"name": "Ndonga", "native": "Oshiwambo"},
    "nl": {"name": "Dutch", "native": "Nederlands"},
    "nn": {"name": "Norwegian Nynorsk", "native": "Norsk (nynorsk)"},
    "no": {"name": "Norwegian", "native": "Norsk (bokmål / riksmål)"},
    "nr": {"name": "South Ndebele", "native": "isiNdebele"},
    "nv": {"name": "Navajo", "native": "Diné bizaad"},
    "ny": {"name": "Chichewa", "native": "Chi-Chewa"},
    "oc": {"name": "Occitan", "native": "Occitan"},
    "oj": {"name": "Ojibwa", "native": "ᐊᓂᔑᓈᐯᒧᐎᓐ / Anishinaabemowin"},
    "om": {"name": "Oromo", "native": "Oromoo"},
    "or": {"name": "Oriya", "native": "ଓଡ଼ିଆ"},
    "os": {"name": "Ossetian / Ossetic", "native": "Иронау"},
    "pa": {"name": "Panjabi / Punjabi", "native": "ਪੰਜਾਬੀ / पंजाबी / پنجابي"},
    "pi": {"name": "Pali", "native": "Pāli / पाऴि"},
    "pl": {"name": "Polish", "native": "Polski"},
    "ps": {"name": "Pashto", "native": "پښتو", "rtl": 1},
    "pt": {"name": "Portuguese", "native": "Português"},
    "qu": {"name": "Quechua", "native": "Runa Simi"},
    "rm": {"name": "Raeto Romance", "native": "Rumantsch"},
    "rn": {"name": "Kirundi", "native": "Kirundi"},
    "ro": {"name": "Romanian", "native": "Română"},
    "ru": {"name": "Russian", "native": "Русский"},
    "rw": {"name": "Rwandi", "native": "Kinyarwandi"},
    "sa": {"name": "Sanskrit", "native": "संस्कृतम्"},
    "sc": {"name": "Sardinian", "native": "Sardu"},
    "sd": {"name": "Sindhi", "native": "सिनधि"},
    "se": {"name": "Northern Sami", "native": "Sámegiella"},
    "sg": {"name": "Sango", "native": "Sängö"},
    "sh": {"name": "Serbo-Croatian", "native": "Srpskohrvatski / Српскохрватски"},
    "si": {"name": "Sinhalese", "native": "සිංහල"},
    "sk": {"name": "Slovak", "native": "Slovenčina"},
    "sl": {"name": "Slovenian", "native": "Slovenščina"},
    "sm": {"name": "Samoan", "native": "Gagana Samoa"},
    "sn": {"name": "Shona", "native": "chiShona"},
    "so": {"name": "Somalia", "native": "Soomaaliga"},
    "sq": {"name": "Albanian", "native": "Shqip"},
    "sr": {"name": "Serbian", "native": "Српски"},
    "ss": {"name": "Swati", "native": "SiSwati"},
    "st": {"name": "Southern Sotho", "native": "Sesotho"},
    "su": {"name": "Sundanese", "native": "Basa Sunda"},
    "sv": {"name": "Swedish", "native": "Svenska"},
    "sw": {"name": "Swahili", "native": "Kiswahili"},
    "ta": {"name": "Tamil", "native": "தமிழ்"},
    "te": {"name": "Telugu", "native": "తెలుగు"},
    "tg": {"name": "Tajik", "native": "Тоҷикӣ"},
    "th": {"name": "Thai", "native": "ไทย / Phasa Thai"},
    "ti": {"name": "Tigrinya", "native": "ትግርኛ"},
    "tk": {"name": "Turkmen", "native": "Туркмен / تركمن"},
    "tl": {"name": "Tagalog / Filipino", "native": "Tagalog"},
    "tn": {"name": "Tswana", "native": "Setswana"},
    "to": {"name": "Tonga", "native": "Lea Faka-Tonga"},
    "tr": {"name": "Turkish", "native": "Türkçe"},
    "ts": {"name": "Tsonga", "native": "Xitsonga"},
    "tt": {"name": "Tatar", "native": "Tatarça"},
    "tw": {"name": "Twi", "native": "Twi"},
    "ty": {"name": "Tahitian", "native": "Reo Mā`ohi"},
    "ug": {"name": "Uyghur", "native": "Uyƣurqə / ئۇيغۇرچە"},
    "uk": {"name": "Ukrainian", "native": "Українська"},
    "ur": {"name": "Urdu", "native": "اردو", "rtl": 1},
    "uz": {"name": "Uzbek", "native": "Ўзбек"},
    "ve": {"name": "Venda", "native": "Tshivenḓa"},
    "vi": {"name": "Vietnamese", "native": "Tiếng Việt"},
    "vo": {"name": "Volapük", "native": "Volapük"},
    "wa": {"name": "Walloon", "native": "Walon"},
    "wo": {"name": "Wolof", "native": "Wollof"},
    "xh": {"name": "Xhosa", "native": "isiXhosa"},
    "yi": {"name": "Yiddish", "native": "ייִדיש", "rtl": 1},
    "yo": {"name": "Yoruba", "native": "Yorùbá"},
    "za": {"name": "Zhuang", "native": "Cuengh / Tôô / 壮语"},
    "zh": {"name": "Chinese", "native": "中文"},
    "zu": {"name": "Zulu", "native": "isiZulu"}
}
languages.each do |language|
  puts code = language[0].to_s
  puts name_en = language[1][:name]
  puts name_native = language[1][:native]

  Language.create(name_en: name_en, name_native: name_native, code: code)
end
#LANGUAGES
####################################################

#CONTINENTS
####################################################
continents = [
    {code: "AF", name: "Africa"},
    {code: "AN", name: "Antarctica"},
    {code: "AS", name: "Asia"},
    {code: "EU", name: "Europe"},
    {code: "NA", name: "North America"},
    {code: "OC", name: "Oceania"},
    {code: "SA", name: "South America"}
]
continents.each {|c|
  Continent.create(name_en: c[:name], code: c[:code])
}
####################################################
#CONTINENTS

#COUNTRIES
####################################################
countries = {
    "AD": {
        "name": "Andorra",
        "native": "Andorra",
        "phone": "376",
        "continent": "EU",
        "capital": "Andorra la Vella",
        "currency": "EUR",
        "languages": [
            "ca"
        ]
    },
    "AE": {
        "name": "United Arab Emirates",
        "native": "دولة الإمارات العربية المتحدة",
        "phone": "971",
        "continent": "AS",
        "capital": "Abu Dhabi",
        "currency": "AED",
        "languages": [
            "ar"
        ]
    },
    "AF": {
        "name": "Afghanistan",
        "native": "افغانستان",
        "phone": "93",
        "continent": "AS",
        "capital": "Kabul",
        "currency": "AFN",
        "languages": [
            "ps",
            "uz",
            "tk"
        ]
    },
    "AG": {
        "name": "Antigua and Barbuda",
        "native": "Antigua and Barbuda",
        "phone": "1268",
        "continent": "NA",
        "capital": "Saint John's",
        "currency": "XCD",
        "languages": [
            "en"
        ]
    },
    "AI": {
        "name": "Anguilla",
        "native": "Anguilla",
        "phone": "1264",
        "continent": "NA",
        "capital": "The Valley",
        "currency": "XCD",
        "languages": [
            "en"
        ]
    },
    "AL": {
        "name": "Albania",
        "native": "Shqipëria",
        "phone": "355",
        "continent": "EU",
        "capital": "Tirana",
        "currency": "ALL",
        "languages": [
            "sq"
        ]
    },
    "AM": {
        "name": "Armenia",
        "native": "Հայաստան",
        "phone": "374",
        "continent": "AS",
        "capital": "Yerevan",
        "currency": "AMD",
        "languages": [
            "hy",
            "ru"
        ]
    },
    "AO": {
        "name": "Angola",
        "native": "Angola",
        "phone": "244",
        "continent": "AF",
        "capital": "Luanda",
        "currency": "AOA",
        "languages": [
            "pt"
        ]
    },
    "AQ": {
        "name": "Antarctica",
        "native": "Antarctica",
        "phone": "",
        "continent": "AN",
        "capital": "",
        "currency": "",
        "languages": []
    },
    "AR": {
        "name": "Argentina",
        "native": "Argentina",
        "phone": "54",
        "continent": "SA",
        "capital": "Buenos Aires",
        "currency": "ARS",
        "languages": [
            "es",
            "gn"
        ]
    },
    "AS": {
        "name": "American Samoa",
        "native": "American Samoa",
        "phone": "1684",
        "continent": "OC",
        "capital": "Pago Pago",
        "currency": "USD",
        "languages": [
            "en",
            "sm"
        ]
    },
    "AT": {
        "name": "Austria",
        "native": "Österreich",
        "phone": "43",
        "continent": "EU",
        "capital": "Vienna",
        "currency": "EUR",
        "languages": [
            "de"
        ]
    },
    "AU": {
        "name": "Australia",
        "native": "Australia",
        "phone": "61",
        "continent": "OC",
        "capital": "Canberra",
        "currency": "AUD",
        "languages": [
            "en"
        ]
    },
    "AW": {
        "name": "Aruba",
        "native": "Aruba",
        "phone": "297",
        "continent": "NA",
        "capital": "Oranjestad",
        "currency": "AWG",
        "languages": [
            "nl",
            "pa"
        ]
    },
    "AX": {
        "name": "Åland",
        "native": "Åland",
        "phone": "358",
        "continent": "EU",
        "capital": "Mariehamn",
        "currency": "EUR",
        "languages": [
            "sv"
        ]
    },
    "AZ": {
        "name": "Azerbaijan",
        "native": "Azərbaycan",
        "phone": "994",
        "continent": "AS",
        "capital": "Baku",
        "currency": "AZN",
        "languages": [
            "az"
        ]
    },
    "BA": {
        "name": "Bosnia and Herzegovina",
        "native": "Bosna i Hercegovina",
        "phone": "387",
        "continent": "EU",
        "capital": "Sarajevo",
        "currency": "BAM",
        "languages": [
            "bs",
            "hr",
            "sr"
        ]
    },
    "BB": {
        "name": "Barbados",
        "native": "Barbados",
        "phone": "1246",
        "continent": "NA",
        "capital": "Bridgetown",
        "currency": "BBD",
        "languages": [
            "en"
        ]
    },
    "BD": {
        "name": "Bangladesh",
        "native": "Bangladesh",
        "phone": "880",
        "continent": "AS",
        "capital": "Dhaka",
        "currency": "BDT",
        "languages": [
            "bn"
        ]
    },
    "BE": {
        "name": "Belgium",
        "native": "België",
        "phone": "32",
        "continent": "EU",
        "capital": "Brussels",
        "currency": "EUR",
        "languages": [
            "nl",
            "fr",
            "de"
        ]
    },
    "BF": {
        "name": "Burkina Faso",
        "native": "Burkina Faso",
        "phone": "226",
        "continent": "AF",
        "capital": "Ouagadougou",
        "currency": "XOF",
        "languages": [
            "fr",
            "ff"
        ]
    },
    "BG": {
        "name": "Bulgaria",
        "native": "България",
        "phone": "359",
        "continent": "EU",
        "capital": "Sofia",
        "currency": "BGN",
        "languages": [
            "bg"
        ]
    },
    "BH": {
        "name": "Bahrain",
        "native": "‏البحرين",
        "phone": "973",
        "continent": "AS",
        "capital": "Manama",
        "currency": "BHD",
        "languages": [
            "ar"
        ]
    },
    "BI": {
        "name": "Burundi",
        "native": "Burundi",
        "phone": "257",
        "continent": "AF",
        "capital": "Bujumbura",
        "currency": "BIF",
        "languages": [
            "fr",
            "rn"
        ]
    },
    "BJ": {
        "name": "Benin",
        "native": "Bénin",
        "phone": "229",
        "continent": "AF",
        "capital": "Porto-Novo",
        "currency": "XOF",
        "languages": [
            "fr"
        ]
    },
    "BL": {
        "name": "Saint Barthélemy",
        "native": "Saint-Barthélemy",
        "phone": "590",
        "continent": "NA",
        "capital": "Gustavia",
        "currency": "EUR",
        "languages": [
            "fr"
        ]
    },
    "BM": {
        "name": "Bermuda",
        "native": "Bermuda",
        "phone": "1441",
        "continent": "NA",
        "capital": "Hamilton",
        "currency": "BMD",
        "languages": [
            "en"
        ]
    },
    "BN": {
        "name": "Brunei",
        "native": "Negara Brunei Darussalam",
        "phone": "673",
        "continent": "AS",
        "capital": "Bandar Seri Begawan",
        "currency": "BND",
        "languages": [
            "ms"
        ]
    },
    "BO": {
        "name": "Bolivia",
        "native": "Bolivia",
        "phone": "591",
        "continent": "SA",
        "capital": "Sucre",
        "currency": "BOB,BOV",
        "languages": [
            "es",
            "ay",
            "qu"
        ]
    },
    "BQ": {
        "name": "Bonaire",
        "native": "Bonaire",
        "phone": "5997",
        "continent": "NA",
        "capital": "Kralendijk",
        "currency": "USD",
        "languages": [
            "nl"
        ]
    },
    "BR": {
        "name": "Brazil",
        "native": "Brasil",
        "phone": "55",
        "continent": "SA",
        "capital": "Brasília",
        "currency": "BRL",
        "languages": [
            "pt"
        ]
    },
    "BS": {
        "name": "Bahamas",
        "native": "Bahamas",
        "phone": "1242",
        "continent": "NA",
        "capital": "Nassau",
        "currency": "BSD",
        "languages": [
            "en"
        ]
    },
    "BT": {
        "name": "Bhutan",
        "native": "ʼbrug-yul",
        "phone": "975",
        "continent": "AS",
        "capital": "Thimphu",
        "currency": "BTN,INR",
        "languages": [
            "dz"
        ]
    },
    "BV": {
        "name": "Bouvet Island",
        "native": "Bouvetøya",
        "phone": "",
        "continent": "AN",
        "capital": "",
        "currency": "NOK",
        "languages": []
    },
    "BW": {
        "name": "Botswana",
        "native": "Botswana",
        "phone": "267",
        "continent": "AF",
        "capital": "Gaborone",
        "currency": "BWP",
        "languages": [
            "en",
            "tn"
        ]
    },
    "BY": {
        "name": "Belarus",
        "native": "Белару́сь",
        "phone": "375",
        "continent": "EU",
        "capital": "Minsk",
        "currency": "BYR",
        "languages": [
            "be",
            "ru"
        ]
    },
    "BZ": {
        "name": "Belize",
        "native": "Belize",
        "phone": "501",
        "continent": "NA",
        "capital": "Belmopan",
        "currency": "BZD",
        "languages": [
            "en",
            "es"
        ]
    },
    "CA": {
        "name": "Canada",
        "native": "Canada",
        "phone": "1",
        "continent": "NA",
        "capital": "Ottawa",
        "currency": "CAD",
        "languages": [
            "en",
            "fr"
        ]
    },
    "CC": {
        "name": "Cocos [Keeling] Islands",
        "native": "Cocos (Keeling) Islands",
        "phone": "61",
        "continent": "AS",
        "capital": "West Island",
        "currency": "AUD",
        "languages": [
            "en"
        ]
    },
    "CD": {
        "name": "Democratic Republic of the Congo",
        "native": "République démocratique du Congo",
        "phone": "243",
        "continent": "AF",
        "capital": "Kinshasa",
        "currency": "CDF",
        "languages": [
            "fr",
            "ln",
            "kg",
            "sw",
            "lu"
        ]
    },
    "CF": {
        "name": "Central African Republic",
        "native": "Ködörösêse tî Bêafrîka",
        "phone": "236",
        "continent": "AF",
        "capital": "Bangui",
        "currency": "XAF",
        "languages": [
            "fr",
            "sg"
        ]
    },
    "CG": {
        "name": "Republic of the Congo",
        "native": "République du Congo",
        "phone": "242",
        "continent": "AF",
        "capital": "Brazzaville",
        "currency": "XAF",
        "languages": [
            "fr",
            "ln"
        ]
    },
    "CH": {
        "name": "Switzerland",
        "native": "Schweiz",
        "phone": "41",
        "continent": "EU",
        "capital": "Bern",
        "currency": "CHE,CHF,CHW",
        "languages": [
            "de",
            "fr",
            "it"
        ]
    },
    "CI": {
        "name": "Ivory Coast",
        "native": "Côte d'Ivoire",
        "phone": "225",
        "continent": "AF",
        "capital": "Yamoussoukro",
        "currency": "XOF",
        "languages": [
            "fr"
        ]
    },
    "CK": {
        "name": "Cook Islands",
        "native": "Cook Islands",
        "phone": "682",
        "continent": "OC",
        "capital": "Avarua",
        "currency": "NZD",
        "languages": [
            "en"
        ]
    },
    "CL": {
        "name": "Chile",
        "native": "Chile",
        "phone": "56",
        "continent": "SA",
        "capital": "Santiago",
        "currency": "CLF,CLP",
        "languages": [
            "es"
        ]
    },
    "CM": {
        "name": "Cameroon",
        "native": "Cameroon",
        "phone": "237",
        "continent": "AF",
        "capital": "Yaoundé",
        "currency": "XAF",
        "languages": [
            "en",
            "fr"
        ]
    },
    "CN": {
        "name": "China",
        "native": "中国",
        "phone": "86",
        "continent": "AS",
        "capital": "Beijing",
        "currency": "CNY",
        "languages": [
            "zh"
        ]
    },
    "CO": {
        "name": "Colombia",
        "native": "Colombia",
        "phone": "57",
        "continent": "SA",
        "capital": "Bogotá",
        "currency": "COP",
        "languages": [
            "es"
        ]
    },
    "CR": {
        "name": "Costa Rica",
        "native": "Costa Rica",
        "phone": "506",
        "continent": "NA",
        "capital": "San José",
        "currency": "CRC",
        "languages": [
            "es"
        ]
    },
    "CU": {
        "name": "Cuba",
        "native": "Cuba",
        "phone": "53",
        "continent": "NA",
        "capital": "Havana",
        "currency": "CUC,CUP",
        "languages": [
            "es"
        ]
    },
    "CV": {
        "name": "Cape Verde",
        "native": "Cabo Verde",
        "phone": "238",
        "continent": "AF",
        "capital": "Praia",
        "currency": "CVE",
        "languages": [
            "pt"
        ]
    },
    "CW": {
        "name": "Curacao",
        "native": "Curaçao",
        "phone": "5999",
        "continent": "NA",
        "capital": "Willemstad",
        "currency": "ANG",
        "languages": [
            "nl",
            "pa",
            "en"
        ]
    },
    "CX": {
        "name": "Christmas Island",
        "native": "Christmas Island",
        "phone": "61",
        "continent": "AS",
        "capital": "Flying Fish Cove",
        "currency": "AUD",
        "languages": [
            "en"
        ]
    },
    "CY": {
        "name": "Cyprus",
        "native": "Κύπρος",
        "phone": "357",
        "continent": "EU",
        "capital": "Nicosia",
        "currency": "EUR",
        "languages": [
            "el",
            "tr",
            "hy"
        ]
    },
    "CZ": {
        "name": "Czech Republic",
        "native": "Česká republika",
        "phone": "420",
        "continent": "EU",
        "capital": "Prague",
        "currency": "CZK",
        "languages": [
            "cs",
            "sk"
        ]
    },
    "DE": {
        "name": "Germany",
        "native": "Deutschland",
        "phone": "49",
        "continent": "EU",
        "capital": "Berlin",
        "currency": "EUR",
        "languages": [
            "de"
        ]
    },
    "DJ": {
        "name": "Djibouti",
        "native": "Djibouti",
        "phone": "253",
        "continent": "AF",
        "capital": "Djibouti",
        "currency": "DJF",
        "languages": [
            "fr",
            "ar"
        ]
    },
    "DK": {
        "name": "Denmark",
        "native": "Danmark",
        "phone": "45",
        "continent": "EU",
        "capital": "Copenhagen",
        "currency": "DKK",
        "languages": [
            "da"
        ]
    },
    "DM": {
        "name": "Dominica",
        "native": "Dominica",
        "phone": "1767",
        "continent": "NA",
        "capital": "Roseau",
        "currency": "XCD",
        "languages": [
            "en"
        ]
    },
    "DO": {
        "name": "Dominican Republic",
        "native": "República Dominicana",
        "phone": "1809,1829,1849",
        "continent": "NA",
        "capital": "Santo Domingo",
        "currency": "DOP",
        "languages": [
            "es"
        ]
    },
    "DZ": {
        "name": "Algeria",
        "native": "الجزائر",
        "phone": "213",
        "continent": "AF",
        "capital": "Algiers",
        "currency": "DZD",
        "languages": [
            "ar"
        ]
    },
    "EC": {
        "name": "Ecuador",
        "native": "Ecuador",
        "phone": "593",
        "continent": "SA",
        "capital": "Quito",
        "currency": "USD",
        "languages": [
            "es"
        ]
    },
    "EE": {
        "name": "Estonia",
        "native": "Eesti",
        "phone": "372",
        "continent": "EU",
        "capital": "Tallinn",
        "currency": "EUR",
        "languages": [
            "et"
        ]
    },
    "EG": {
        "name": "Egypt",
        "native": "مصر‎",
        "phone": "20",
        "continent": "AF",
        "capital": "Cairo",
        "currency": "EGP",
        "languages": [
            "ar"
        ]
    },
    "EH": {
        "name": "Western Sahara",
        "native": "الصحراء الغربية",
        "phone": "212",
        "continent": "AF",
        "capital": "El Aaiún",
        "currency": "MAD,DZD,MRO",
        "languages": [
            "es"
        ]
    },
    "ER": {
        "name": "Eritrea",
        "native": "ኤርትራ",
        "phone": "291",
        "continent": "AF",
        "capital": "Asmara",
        "currency": "ERN",
        "languages": [
            "ti",
            "ar",
            "en"
        ]
    },
    "ES": {
        "name": "Spain",
        "native": "España",
        "phone": "34",
        "continent": "EU",
        "capital": "Madrid",
        "currency": "EUR",
        "languages": [
            "es",
            "eu",
            "ca",
            "gl",
            "oc"
        ]
    },
    "ET": {
        "name": "Ethiopia",
        "native": "ኢትዮጵያ",
        "phone": "251",
        "continent": "AF",
        "capital": "Addis Ababa",
        "currency": "ETB",
        "languages": [
            "am"
        ]
    },
    "FI": {
        "name": "Finland",
        "native": "Suomi",
        "phone": "358",
        "continent": "EU",
        "capital": "Helsinki",
        "currency": "EUR",
        "languages": [
            "fi",
            "sv"
        ]
    },
    "FJ": {
        "name": "Fiji",
        "native": "Fiji",
        "phone": "679",
        "continent": "OC",
        "capital": "Suva",
        "currency": "FJD",
        "languages": [
            "en",
            "fj",
            "hi",
            "ur"
        ]
    },
    "FK": {
        "name": "Falkland Islands",
        "native": "Falkland Islands",
        "phone": "500",
        "continent": "SA",
        "capital": "Stanley",
        "currency": "FKP",
        "languages": [
            "en"
        ]
    },
    "FM": {
        "name": "Micronesia",
        "native": "Micronesia",
        "phone": "691",
        "continent": "OC",
        "capital": "Palikir",
        "currency": "USD",
        "languages": [
            "en"
        ]
    },
    "FO": {
        "name": "Faroe Islands",
        "native": "Føroyar",
        "phone": "298",
        "continent": "EU",
        "capital": "Tórshavn",
        "currency": "DKK",
        "languages": [
            "fo"
        ]
    },
    "FR": {
        "name": "France",
        "native": "France",
        "phone": "33",
        "continent": "EU",
        "capital": "Paris",
        "currency": "EUR",
        "languages": [
            "fr"
        ]
    },
    "GA": {
        "name": "Gabon",
        "native": "Gabon",
        "phone": "241",
        "continent": "AF",
        "capital": "Libreville",
        "currency": "XAF",
        "languages": [
            "fr"
        ]
    },
    "GB": {
        "name": "United Kingdom",
        "native": "United Kingdom",
        "phone": "44",
        "continent": "EU",
        "capital": "London",
        "currency": "GBP",
        "languages": [
            "en"
        ]
    },
    "GD": {
        "name": "Grenada",
        "native": "Grenada",
        "phone": "1473",
        "continent": "NA",
        "capital": "St. George's",
        "currency": "XCD",
        "languages": [
            "en"
        ]
    },
    "GE": {
        "name": "Georgia",
        "native": "საქართველო",
        "phone": "995",
        "continent": "AS",
        "capital": "Tbilisi",
        "currency": "GEL",
        "languages": [
            "ka"
        ]
    },
    "GF": {
        "name": "French Guiana",
        "native": "Guyane française",
        "phone": "594",
        "continent": "SA",
        "capital": "Cayenne",
        "currency": "EUR",
        "languages": [
            "fr"
        ]
    },
    "GG": {
        "name": "Guernsey",
        "native": "Guernsey",
        "phone": "44",
        "continent": "EU",
        "capital": "St. Peter Port",
        "currency": "GBP",
        "languages": [
            "en",
            "fr"
        ]
    },
    "GH": {
        "name": "Ghana",
        "native": "Ghana",
        "phone": "233",
        "continent": "AF",
        "capital": "Accra",
        "currency": "GHS",
        "languages": [
            "en"
        ]
    },
    "GI": {
        "name": "Gibraltar",
        "native": "Gibraltar",
        "phone": "350",
        "continent": "EU",
        "capital": "Gibraltar",
        "currency": "GIP",
        "languages": [
            "en"
        ]
    },
    "GL": {
        "name": "Greenland",
        "native": "Kalaallit Nunaat",
        "phone": "299",
        "continent": "NA",
        "capital": "Nuuk",
        "currency": "DKK",
        "languages": [
            "kl"
        ]
    },
    "GM": {
        "name": "Gambia",
        "native": "Gambia",
        "phone": "220",
        "continent": "AF",
        "capital": "Banjul",
        "currency": "GMD",
        "languages": [
            "en"
        ]
    },
    "GN": {
        "name": "Guinea",
        "native": "Guinée",
        "phone": "224",
        "continent": "AF",
        "capital": "Conakry",
        "currency": "GNF",
        "languages": [
            "fr",
            "ff"
        ]
    },
    "GP": {
        "name": "Guadeloupe",
        "native": "Guadeloupe",
        "phone": "590",
        "continent": "NA",
        "capital": "Basse-Terre",
        "currency": "EUR",
        "languages": [
            "fr"
        ]
    },
    "GQ": {
        "name": "Equatorial Guinea",
        "native": "Guinea Ecuatorial",
        "phone": "240",
        "continent": "AF",
        "capital": "Malabo",
        "currency": "XAF",
        "languages": [
            "es",
            "fr"
        ]
    },
    "GR": {
        "name": "Greece",
        "native": "Ελλάδα",
        "phone": "30",
        "continent": "EU",
        "capital": "Athens",
        "currency": "EUR",
        "languages": [
            "el"
        ]
    },
    "GS": {
        "name": "South Georgia and the South Sandwich Islands",
        "native": "South Georgia",
        "phone": "500",
        "continent": "AN",
        "capital": "King Edward Point",
        "currency": "GBP",
        "languages": [
            "en"
        ]
    },
    "GT": {
        "name": "Guatemala",
        "native": "Guatemala",
        "phone": "502",
        "continent": "NA",
        "capital": "Guatemala City",
        "currency": "GTQ",
        "languages": [
            "es"
        ]
    },
    "GU": {
        "name": "Guam",
        "native": "Guam",
        "phone": "1671",
        "continent": "OC",
        "capital": "Hagåtña",
        "currency": "USD",
        "languages": [
            "en",
            "ch",
            "es"
        ]
    },
    "GW": {
        "name": "Guinea-Bissau",
        "native": "Guiné-Bissau",
        "phone": "245",
        "continent": "AF",
        "capital": "Bissau",
        "currency": "XOF",
        "languages": [
            "pt"
        ]
    },
    "GY": {
        "name": "Guyana",
        "native": "Guyana",
        "phone": "592",
        "continent": "SA",
        "capital": "Georgetown",
        "currency": "GYD",
        "languages": [
            "en"
        ]
    },
    "HK": {
        "name": "Hong Kong",
        "native": "香港",
        "phone": "852",
        "continent": "AS",
        "capital": "City of Victoria",
        "currency": "HKD",
        "languages": [
            "zh",
            "en"
        ]
    },
    "HM": {
        "name": "Heard Island and McDonald Islands",
        "native": "Heard Island and McDonald Islands",
        "phone": "",
        "continent": "AN",
        "capital": "",
        "currency": "AUD",
        "languages": [
            "en"
        ]
    },
    "HN": {
        "name": "Honduras",
        "native": "Honduras",
        "phone": "504",
        "continent": "NA",
        "capital": "Tegucigalpa",
        "currency": "HNL",
        "languages": [
            "es"
        ]
    },
    "HR": {
        "name": "Croatia",
        "native": "Hrvatska",
        "phone": "385",
        "continent": "EU",
        "capital": "Zagreb",
        "currency": "HRK",
        "languages": [
            "hr"
        ]
    },
    "HT": {
        "name": "Haiti",
        "native": "Haïti",
        "phone": "509",
        "continent": "NA",
        "capital": "Port-au-Prince",
        "currency": "HTG,USD",
        "languages": [
            "fr",
            "ht"
        ]
    },
    "HU": {
        "name": "Hungary",
        "native": "Magyarország",
        "phone": "36",
        "continent": "EU",
        "capital": "Budapest",
        "currency": "HUF",
        "languages": [
            "hu"
        ]
    },
    "ID": {
        "name": "Indonesia",
        "native": "Indonesia",
        "phone": "62",
        "continent": "AS",
        "capital": "Jakarta",
        "currency": "IDR",
        "languages": [
            "id"
        ]
    },
    "IE": {
        "name": "Ireland",
        "native": "Éire",
        "phone": "353",
        "continent": "EU",
        "capital": "Dublin",
        "currency": "EUR",
        "languages": [
            "ga",
            "en"
        ]
    },
    "IL": {
        "name": "Israel",
        "native": "יִשְׂרָאֵל",
        "phone": "972",
        "continent": "AS",
        "capital": "Jerusalem",
        "currency": "ILS",
        "languages": [
            "he",
            "ar"
        ]
    },
    "IM": {
        "name": "Isle of Man",
        "native": "Isle of Man",
        "phone": "44",
        "continent": "EU",
        "capital": "Douglas",
        "currency": "GBP",
        "languages": [
            "en",
            "gv"
        ]
    },
    "IN": {
        "name": "India",
        "native": "भारत",
        "phone": "91",
        "continent": "AS",
        "capital": "New Delhi",
        "currency": "INR",
        "languages": [
            "hi",
            "en"
        ]
    },
    "IO": {
        "name": "British Indian Ocean Territory",
        "native": "British Indian Ocean Territory",
        "phone": "246",
        "continent": "AS",
        "capital": "Diego Garcia",
        "currency": "USD",
        "languages": [
            "en"
        ]
    },
    "IQ": {
        "name": "Iraq",
        "native": "العراق",
        "phone": "964",
        "continent": "AS",
        "capital": "Baghdad",
        "currency": "IQD",
        "languages": [
            "ar",
            "ku"
        ]
    },
    "IR": {
        "name": "Iran",
        "native": "ایران",
        "phone": "98",
        "continent": "AS",
        "capital": "Tehran",
        "currency": "IRR",
        "languages": [
            "fa"
        ]
    },
    "IS": {
        "name": "Iceland",
        "native": "Ísland",
        "phone": "354",
        "continent": "EU",
        "capital": "Reykjavik",
        "currency": "ISK",
        "languages": [
            "is"
        ]
    },
    "IT": {
        "name": "Italy",
        "native": "Italia",
        "phone": "39",
        "continent": "EU",
        "capital": "Rome",
        "currency": "EUR",
        "languages": [
            "it"
        ]
    },
    "JE": {
        "name": "Jersey",
        "native": "Jersey",
        "phone": "44",
        "continent": "EU",
        "capital": "Saint Helier",
        "currency": "GBP",
        "languages": [
            "en",
            "fr"
        ]
    },
    "JM": {
        "name": "Jamaica",
        "native": "Jamaica",
        "phone": "1876",
        "continent": "NA",
        "capital": "Kingston",
        "currency": "JMD",
        "languages": [
            "en"
        ]
    },
    "JO": {
        "name": "Jordan",
        "native": "الأردن",
        "phone": "962",
        "continent": "AS",
        "capital": "Amman",
        "currency": "JOD",
        "languages": [
            "ar"
        ]
    },
    "JP": {
        "name": "Japan",
        "native": "日本",
        "phone": "81",
        "continent": "AS",
        "capital": "Tokyo",
        "currency": "JPY",
        "languages": [
            "ja"
        ]
    },
    "KE": {
        "name": "Kenya",
        "native": "Kenya",
        "phone": "254",
        "continent": "AF",
        "capital": "Nairobi",
        "currency": "KES",
        "languages": [
            "en",
            "sw"
        ]
    },
    "KG": {
        "name": "Kyrgyzstan",
        "native": "Кыргызстан",
        "phone": "996",
        "continent": "AS",
        "capital": "Bishkek",
        "currency": "KGS",
        "languages": [
            "ky",
            "ru"
        ]
    },
    "KH": {
        "name": "Cambodia",
        "native": "Kâmpŭchéa",
        "phone": "855",
        "continent": "AS",
        "capital": "Phnom Penh",
        "currency": "KHR",
        "languages": [
            "km"
        ]
    },
    "KI": {
        "name": "Kiribati",
        "native": "Kiribati",
        "phone": "686",
        "continent": "OC",
        "capital": "South Tarawa",
        "currency": "AUD",
        "languages": [
            "en"
        ]
    },
    "KM": {
        "name": "Comoros",
        "native": "Komori",
        "phone": "269",
        "continent": "AF",
        "capital": "Moroni",
        "currency": "KMF",
        "languages": [
            "ar",
            "fr"
        ]
    },
    "KN": {
        "name": "Saint Kitts and Nevis",
        "native": "Saint Kitts and Nevis",
        "phone": "1869",
        "continent": "NA",
        "capital": "Basseterre",
        "currency": "XCD",
        "languages": [
            "en"
        ]
    },
    "KP": {
        "name": "North Korea",
        "native": "북한",
        "phone": "850",
        "continent": "AS",
        "capital": "Pyongyang",
        "currency": "KPW",
        "languages": [
            "ko"
        ]
    },
    "KR": {
        "name": "South Korea",
        "native": "대한민국",
        "phone": "82",
        "continent": "AS",
        "capital": "Seoul",
        "currency": "KRW",
        "languages": [
            "ko"
        ]
    },
    "KW": {
        "name": "Kuwait",
        "native": "الكويت",
        "phone": "965",
        "continent": "AS",
        "capital": "Kuwait City",
        "currency": "KWD",
        "languages": [
            "ar"
        ]
    },
    "KY": {
        "name": "Cayman Islands",
        "native": "Cayman Islands",
        "phone": "1345",
        "continent": "NA",
        "capital": "George Town",
        "currency": "KYD",
        "languages": [
            "en"
        ]
    },
    "KZ": {
        "name": "Kazakhstan",
        "native": "Қазақстан",
        "phone": "76,77",
        "continent": "AS",
        "capital": "Astana",
        "currency": "KZT",
        "languages": [
            "kk",
            "ru"
        ]
    },
    "LA": {
        "name": "Laos",
        "native": "ສປປລາວ",
        "phone": "856",
        "continent": "AS",
        "capital": "Vientiane",
        "currency": "LAK",
        "languages": [
            "lo"
        ]
    },
    "LB": {
        "name": "Lebanon",
        "native": "لبنان",
        "phone": "961",
        "continent": "AS",
        "capital": "Beirut",
        "currency": "LBP",
        "languages": [
            "ar",
            "fr"
        ]
    },
    "LC": {
        "name": "Saint Lucia",
        "native": "Saint Lucia",
        "phone": "1758",
        "continent": "NA",
        "capital": "Castries",
        "currency": "XCD",
        "languages": [
            "en"
        ]
    },
    "LI": {
        "name": "Liechtenstein",
        "native": "Liechtenstein",
        "phone": "423",
        "continent": "EU",
        "capital": "Vaduz",
        "currency": "CHF",
        "languages": [
            "de"
        ]
    },
    "LK": {
        "name": "Sri Lanka",
        "native": "śrī laṃkāva",
        "phone": "94",
        "continent": "AS",
        "capital": "Colombo",
        "currency": "LKR",
        "languages": [
            "si",
            "ta"
        ]
    },
    "LR": {
        "name": "Liberia",
        "native": "Liberia",
        "phone": "231",
        "continent": "AF",
        "capital": "Monrovia",
        "currency": "LRD",
        "languages": [
            "en"
        ]
    },
    "LS": {
        "name": "Lesotho",
        "native": "Lesotho",
        "phone": "266",
        "continent": "AF",
        "capital": "Maseru",
        "currency": "LSL,ZAR",
        "languages": [
            "en",
            "st"
        ]
    },
    "LT": {
        "name": "Lithuania",
        "native": "Lietuva",
        "phone": "370",
        "continent": "EU",
        "capital": "Vilnius",
        "currency": "LTL",
        "languages": [
            "lt"
        ]
    },
    "LU": {
        "name": "Luxembourg",
        "native": "Luxembourg",
        "phone": "352",
        "continent": "EU",
        "capital": "Luxembourg",
        "currency": "EUR",
        "languages": [
            "fr",
            "de",
            "lb"
        ]
    },
    "LV": {
        "name": "Latvia",
        "native": "Latvija",
        "phone": "371",
        "continent": "EU",
        "capital": "Riga",
        "currency": "EUR",
        "languages": [
            "lv"
        ]
    },
    "LY": {
        "name": "Libya",
        "native": "‏ليبيا",
        "phone": "218",
        "continent": "AF",
        "capital": "Tripoli",
        "currency": "LYD",
        "languages": [
            "ar"
        ]
    },
    "MA": {
        "name": "Morocco",
        "native": "المغرب",
        "phone": "212",
        "continent": "AF",
        "capital": "Rabat",
        "currency": "MAD",
        "languages": [
            "ar"
        ]
    },
    "MC": {
        "name": "Monaco",
        "native": "Monaco",
        "phone": "377",
        "continent": "EU",
        "capital": "Monaco",
        "currency": "EUR",
        "languages": [
            "fr"
        ]
    },
    "MD": {
        "name": "Moldova",
        "native": "Moldova",
        "phone": "373",
        "continent": "EU",
        "capital": "Chișinău",
        "currency": "MDL",
        "languages": [
            "ro"
        ]
    },
    "ME": {
        "name": "Montenegro",
        "native": "Црна Гора",
        "phone": "382",
        "continent": "EU",
        "capital": "Podgorica",
        "currency": "EUR",
        "languages": [
            "sr",
            "bs",
            "sq",
            "hr"
        ]
    },
    "MF": {
        "name": "Saint Martin",
        "native": "Saint-Martin",
        "phone": "590",
        "continent": "NA",
        "capital": "Marigot",
        "currency": "EUR",
        "languages": [
            "en",
            "fr",
            "nl"
        ]
    },
    "MG": {
        "name": "Madagascar",
        "native": "Madagasikara",
        "phone": "261",
        "continent": "AF",
        "capital": "Antananarivo",
        "currency": "MGA",
        "languages": [
            "fr",
            "mg"
        ]
    },
    "MH": {
        "name": "Marshall Islands",
        "native": "M̧ajeļ",
        "phone": "692",
        "continent": "OC",
        "capital": "Majuro",
        "currency": "USD",
        "languages": [
            "en",
            "mh"
        ]
    },
    "MK": {
        "name": "Macedonia",
        "native": "Македонија",
        "phone": "389",
        "continent": "EU",
        "capital": "Skopje",
        "currency": "MKD",
        "languages": [
            "mk"
        ]
    },
    "ML": {
        "name": "Mali",
        "native": "Mali",
        "phone": "223",
        "continent": "AF",
        "capital": "Bamako",
        "currency": "XOF",
        "languages": [
            "fr"
        ]
    },
    "MM": {
        "name": "Myanmar [Burma]",
        "native": "Myanma",
        "phone": "95",
        "continent": "AS",
        "capital": "Naypyidaw",
        "currency": "MMK",
        "languages": [
            "my"
        ]
    },
    "MN": {
        "name": "Mongolia",
        "native": "Монгол улс",
        "phone": "976",
        "continent": "AS",
        "capital": "Ulan Bator",
        "currency": "MNT",
        "languages": [
            "mn"
        ]
    },
    "MO": {
        "name": "Macao",
        "native": "澳門",
        "phone": "853",
        "continent": "AS",
        "capital": "",
        "currency": "MOP",
        "languages": [
            "zh",
            "pt"
        ]
    },
    "MP": {
        "name": "Northern Mariana Islands",
        "native": "Northern Mariana Islands",
        "phone": "1670",
        "continent": "OC",
        "capital": "Saipan",
        "currency": "USD",
        "languages": [
            "en",
            "ch"
        ]
    },
    "MQ": {
        "name": "Martinique",
        "native": "Martinique",
        "phone": "596",
        "continent": "NA",
        "capital": "Fort-de-France",
        "currency": "EUR",
        "languages": [
            "fr"
        ]
    },
    "MR": {
        "name": "Mauritania",
        "native": "موريتانيا",
        "phone": "222",
        "continent": "AF",
        "capital": "Nouakchott",
        "currency": "MRO",
        "languages": [
            "ar"
        ]
    },
    "MS": {
        "name": "Montserrat",
        "native": "Montserrat",
        "phone": "1664",
        "continent": "NA",
        "capital": "Plymouth",
        "currency": "XCD",
        "languages": [
            "en"
        ]
    },
    "MT": {
        "name": "Malta",
        "native": "Malta",
        "phone": "356",
        "continent": "EU",
        "capital": "Valletta",
        "currency": "EUR",
        "languages": [
            "mt",
            "en"
        ]
    },
    "MU": {
        "name": "Mauritius",
        "native": "Maurice",
        "phone": "230",
        "continent": "AF",
        "capital": "Port Louis",
        "currency": "MUR",
        "languages": [
            "en"
        ]
    },
    "MV": {
        "name": "Maldives",
        "native": "Maldives",
        "phone": "960",
        "continent": "AS",
        "capital": "Malé",
        "currency": "MVR",
        "languages": [
            "dv"
        ]
    },
    "MW": {
        "name": "Malawi",
        "native": "Malawi",
        "phone": "265",
        "continent": "AF",
        "capital": "Lilongwe",
        "currency": "MWK",
        "languages": [
            "en",
            "ny"
        ]
    },
    "MX": {
        "name": "Mexico",
        "native": "México",
        "phone": "52",
        "continent": "NA",
        "capital": "Mexico City",
        "currency": "MXN",
        "languages": [
            "es"
        ]
    },
    "MY": {
        "name": "Malaysia",
        "native": "Malaysia",
        "phone": "60",
        "continent": "AS",
        "capital": "Kuala Lumpur",
        "currency": "MYR",
        "languages": []
    },
    "MZ": {
        "name": "Mozambique",
        "native": "Moçambique",
        "phone": "258",
        "continent": "AF",
        "capital": "Maputo",
        "currency": "MZN",
        "languages": [
            "pt"
        ]
    },
    "NA": {
        "name": "Namibia",
        "native": "Namibia",
        "phone": "264",
        "continent": "AF",
        "capital": "Windhoek",
        "currency": "NAD,ZAR",
        "languages": [
            "en",
            "af"
        ]
    },
    "NC": {
        "name": "New Caledonia",
        "native": "Nouvelle-Calédonie",
        "phone": "687",
        "continent": "OC",
        "capital": "Nouméa",
        "currency": "XPF",
        "languages": [
            "fr"
        ]
    },
    "NE": {
        "name": "Niger",
        "native": "Niger",
        "phone": "227",
        "continent": "AF",
        "capital": "Niamey",
        "currency": "XOF",
        "languages": [
            "fr"
        ]
    },
    "NF": {
        "name": "Norfolk Island",
        "native": "Norfolk Island",
        "phone": "672",
        "continent": "OC",
        "capital": "Kingston",
        "currency": "AUD",
        "languages": [
            "en"
        ]
    },
    "NG": {
        "name": "Nigeria",
        "native": "Nigeria",
        "phone": "234",
        "continent": "AF",
        "capital": "Abuja",
        "currency": "NGN",
        "languages": [
            "en"
        ]
    },
    "NI": {
        "name": "Nicaragua",
        "native": "Nicaragua",
        "phone": "505",
        "continent": "NA",
        "capital": "Managua",
        "currency": "NIO",
        "languages": [
            "es"
        ]
    },
    "NL": {
        "name": "Netherlands",
        "native": "Nederland",
        "phone": "31",
        "continent": "EU",
        "capital": "Amsterdam",
        "currency": "EUR",
        "languages": [
            "nl"
        ]
    },
    "NO": {
        "name": "Norway",
        "native": "Norge",
        "phone": "47",
        "continent": "EU",
        "capital": "Oslo",
        "currency": "NOK",
        "languages": [
            "no",
            "nb",
            "nn"
        ]
    },
    "NP": {
        "name": "Nepal",
        "native": "नपल",
        "phone": "977",
        "continent": "AS",
        "capital": "Kathmandu",
        "currency": "NPR",
        "languages": [
            "ne"
        ]
    },
    "NR": {
        "name": "Nauru",
        "native": "Nauru",
        "phone": "674",
        "continent": "OC",
        "capital": "Yaren",
        "currency": "AUD",
        "languages": [
            "en",
            "na"
        ]
    },
    "NU": {
        "name": "Niue",
        "native": "Niuē",
        "phone": "683",
        "continent": "OC",
        "capital": "Alofi",
        "currency": "NZD",
        "languages": [
            "en"
        ]
    },
    "NZ": {
        "name": "New Zealand",
        "native": "New Zealand",
        "phone": "64",
        "continent": "OC",
        "capital": "Wellington",
        "currency": "NZD",
        "languages": [
            "en",
            "mi"
        ]
    },
    "OM": {
        "name": "Oman",
        "native": "عمان",
        "phone": "968",
        "continent": "AS",
        "capital": "Muscat",
        "currency": "OMR",
        "languages": [
            "ar"
        ]
    },
    "PA": {
        "name": "Panama",
        "native": "Panamá",
        "phone": "507",
        "continent": "NA",
        "capital": "Panama City",
        "currency": "PAB,USD",
        "languages": [
            "es"
        ]
    },
    "PE": {
        "name": "Peru",
        "native": "Perú",
        "phone": "51",
        "continent": "SA",
        "capital": "Lima",
        "currency": "PEN",
        "languages": [
            "es"
        ]
    },
    "PF": {
        "name": "French Polynesia",
        "native": "Polynésie française",
        "phone": "689",
        "continent": "OC",
        "capital": "Papeetē",
        "currency": "XPF",
        "languages": [
            "fr"
        ]
    },
    "PG": {
        "name": "Papua New Guinea",
        "native": "Papua Niugini",
        "phone": "675",
        "continent": "OC",
        "capital": "Port Moresby",
        "currency": "PGK",
        "languages": [
            "en"
        ]
    },
    "PH": {
        "name": "Philippines",
        "native": "Pilipinas",
        "phone": "63",
        "continent": "AS",
        "capital": "Manila",
        "currency": "PHP",
        "languages": [
            "en"
        ]
    },
    "PK": {
        "name": "Pakistan",
        "native": "Pakistan",
        "phone": "92",
        "continent": "AS",
        "capital": "Islamabad",
        "currency": "PKR",
        "languages": [
            "en",
            "ur"
        ]
    },
    "PL": {
        "name": "Poland",
        "native": "Polska",
        "phone": "48",
        "continent": "EU",
        "capital": "Warsaw",
        "currency": "PLN",
        "languages": [
            "pl"
        ]
    },
    "PM": {
        "name": "Saint Pierre and Miquelon",
        "native": "Saint-Pierre-et-Miquelon",
        "phone": "508",
        "continent": "NA",
        "capital": "Saint-Pierre",
        "currency": "EUR",
        "languages": [
            "fr"
        ]
    },
    "PN": {
        "name": "Pitcairn Islands",
        "native": "Pitcairn Islands",
        "phone": "64",
        "continent": "OC",
        "capital": "Adamstown",
        "currency": "NZD",
        "languages": [
            "en"
        ]
    },
    "PR": {
        "name": "Puerto Rico",
        "native": "Puerto Rico",
        "phone": "1787,1939",
        "continent": "NA",
        "capital": "San Juan",
        "currency": "USD",
        "languages": [
            "es",
            "en"
        ]
    },
    "PS": {
        "name": "Palestine",
        "native": "فلسطين",
        "phone": "970",
        "continent": "AS",
        "capital": "Ramallah",
        "currency": "ILS",
        "languages": [
            "ar"
        ]
    },
    "PT": {
        "name": "Portugal",
        "native": "Portugal",
        "phone": "351",
        "continent": "EU",
        "capital": "Lisbon",
        "currency": "EUR",
        "languages": [
            "pt"
        ]
    },
    "PW": {
        "name": "Palau",
        "native": "Palau",
        "phone": "680",
        "continent": "OC",
        "capital": "Ngerulmud",
        "currency": "USD",
        "languages": [
            "en"
        ]
    },
    "PY": {
        "name": "Paraguay",
        "native": "Paraguay",
        "phone": "595",
        "continent": "SA",
        "capital": "Asunción",
        "currency": "PYG",
        "languages": [
            "es",
            "gn"
        ]
    },
    "QA": {
        "name": "Qatar",
        "native": "قطر",
        "phone": "974",
        "continent": "AS",
        "capital": "Doha",
        "currency": "QAR",
        "languages": [
            "ar"
        ]
    },
    "RE": {
        "name": "Réunion",
        "native": "La Réunion",
        "phone": "262",
        "continent": "AF",
        "capital": "Saint-Denis",
        "currency": "EUR",
        "languages": [
            "fr"
        ]
    },
    "RO": {
        "name": "Romania",
        "native": "România",
        "phone": "40",
        "continent": "EU",
        "capital": "Bucharest",
        "currency": "RON",
        "languages": [
            "ro"
        ]
    },
    "RS": {
        "name": "Serbia",
        "native": "Србија",
        "phone": "381",
        "continent": "EU",
        "capital": "Belgrade",
        "currency": "RSD",
        "languages": [
            "sr"
        ]
    },
    "RU": {
        "name": "Russia",
        "native": "Россия",
        "phone": "7",
        "continent": "EU",
        "capital": "Moscow",
        "currency": "RUB",
        "languages": [
            "ru"
        ]
    },
    "RW": {
        "name": "Rwanda",
        "native": "Rwanda",
        "phone": "250",
        "continent": "AF",
        "capital": "Kigali",
        "currency": "RWF",
        "languages": [
            "rw",
            "en",
            "fr"
        ]
    },
    "SA": {
        "name": "Saudi Arabia",
        "native": "العربية السعودية",
        "phone": "966",
        "continent": "AS",
        "capital": "Riyadh",
        "currency": "SAR",
        "languages": [
            "ar"
        ]
    },
    "SB": {
        "name": "Solomon Islands",
        "native": "Solomon Islands",
        "phone": "677",
        "continent": "OC",
        "capital": "Honiara",
        "currency": "SBD",
        "languages": [
            "en"
        ]
    },
    "SC": {
        "name": "Seychelles",
        "native": "Seychelles",
        "phone": "248",
        "continent": "AF",
        "capital": "Victoria",
        "currency": "SCR",
        "languages": [
            "fr",
            "en"
        ]
    },
    "SD": {
        "name": "Sudan",
        "native": "السودان",
        "phone": "249",
        "continent": "AF",
        "capital": "Khartoum",
        "currency": "SDG",
        "languages": [
            "ar",
            "en"
        ]
    },
    "SE": {
        "name": "Sweden",
        "native": "Sverige",
        "phone": "46",
        "continent": "EU",
        "capital": "Stockholm",
        "currency": "SEK",
        "languages": [
            "sv"
        ]
    },
    "SG": {
        "name": "Singapore",
        "native": "Singapore",
        "phone": "65",
        "continent": "AS",
        "capital": "Singapore",
        "currency": "SGD",
        "languages": [
            "en",
            "ms",
            "ta",
            "zh"
        ]
    },
    "SH": {
        "name": "Saint Helena",
        "native": "Saint Helena",
        "phone": "290",
        "continent": "AF",
        "capital": "Jamestown",
        "currency": "SHP",
        "languages": [
            "en"
        ]
    },
    "SI": {
        "name": "Slovenia",
        "native": "Slovenija",
        "phone": "386",
        "continent": "EU",
        "capital": "Ljubljana",
        "currency": "EUR",
        "languages": [
            "sl"
        ]
    },
    "SJ": {
        "name": "Svalbard and Jan Mayen",
        "native": "Svalbard og Jan Mayen",
        "phone": "4779",
        "continent": "EU",
        "capital": "Longyearbyen",
        "currency": "NOK",
        "languages": [
            "no"
        ]
    },
    "SK": {
        "name": "Slovakia",
        "native": "Slovensko",
        "phone": "421",
        "continent": "EU",
        "capital": "Bratislava",
        "currency": "EUR",
        "languages": [
            "sk"
        ]
    },
    "SL": {
        "name": "Sierra Leone",
        "native": "Sierra Leone",
        "phone": "232",
        "continent": "AF",
        "capital": "Freetown",
        "currency": "SLL",
        "languages": [
            "en"
        ]
    },
    "SM": {
        "name": "San Marino",
        "native": "San Marino",
        "phone": "378",
        "continent": "EU",
        "capital": "City of San Marino",
        "currency": "EUR",
        "languages": [
            "it"
        ]
    },
    "SN": {
        "name": "Senegal",
        "native": "Sénégal",
        "phone": "221",
        "continent": "AF",
        "capital": "Dakar",
        "currency": "XOF",
        "languages": [
            "fr"
        ]
    },
    "SO": {
        "name": "Somalia",
        "native": "Soomaaliya",
        "phone": "252",
        "continent": "AF",
        "capital": "Mogadishu",
        "currency": "SOS",
        "languages": [
            "so",
            "ar"
        ]
    },
    "SR": {
        "name": "Suriname",
        "native": "Suriname",
        "phone": "597",
        "continent": "SA",
        "capital": "Paramaribo",
        "currency": "SRD",
        "languages": [
            "nl"
        ]
    },
    "SS": {
        "name": "South Sudan",
        "native": "South Sudan",
        "phone": "211",
        "continent": "AF",
        "capital": "Juba",
        "currency": "SSP",
        "languages": [
            "en"
        ]
    },
    "ST": {
        "name": "São Tomé and Príncipe",
        "native": "São Tomé e Príncipe",
        "phone": "239",
        "continent": "AF",
        "capital": "São Tomé",
        "currency": "STD",
        "languages": [
            "pt"
        ]
    },
    "SV": {
        "name": "El Salvador",
        "native": "El Salvador",
        "phone": "503",
        "continent": "NA",
        "capital": "San Salvador",
        "currency": "SVC,USD",
        "languages": [
            "es"
        ]
    },
    "SX": {
        "name": "Sint Maarten",
        "native": "Sint Maarten",
        "phone": "1721",
        "continent": "NA",
        "capital": "Philipsburg",
        "currency": "ANG",
        "languages": [
            "nl",
            "en"
        ]
    },
    "SY": {
        "name": "Syria",
        "native": "سوريا",
        "phone": "963",
        "continent": "AS",
        "capital": "Damascus",
        "currency": "SYP",
        "languages": [
            "ar"
        ]
    },
    "SZ": {
        "name": "Swaziland",
        "native": "Swaziland",
        "phone": "268",
        "continent": "AF",
        "capital": "Lobamba",
        "currency": "SZL",
        "languages": [
            "en",
            "ss"
        ]
    },
    "TC": {
        "name": "Turks and Caicos Islands",
        "native": "Turks and Caicos Islands",
        "phone": "1649",
        "continent": "NA",
        "capital": "Cockburn Town",
        "currency": "USD",
        "languages": [
            "en"
        ]
    },
    "TD": {
        "name": "Chad",
        "native": "Tchad",
        "phone": "235",
        "continent": "AF",
        "capital": "N'Djamena",
        "currency": "XAF",
        "languages": [
            "fr",
            "ar"
        ]
    },
    "TF": {
        "name": "French Southern Territories",
        "native": "Territoire des Terres australes et antarctiques fr",
        "phone": "",
        "continent": "AN",
        "capital": "Port-aux-Français",
        "currency": "EUR",
        "languages": [
            "fr"
        ]
    },
    "TG": {
        "name": "Togo",
        "native": "Togo",
        "phone": "228",
        "continent": "AF",
        "capital": "Lomé",
        "currency": "XOF",
        "languages": [
            "fr"
        ]
    },
    "TH": {
        "name": "Thailand",
        "native": "ประเทศไทย",
        "phone": "66",
        "continent": "AS",
        "capital": "Bangkok",
        "currency": "THB",
        "languages": [
            "th"
        ]
    },
    "TJ": {
        "name": "Tajikistan",
        "native": "Тоҷикистон",
        "phone": "992",
        "continent": "AS",
        "capital": "Dushanbe",
        "currency": "TJS",
        "languages": [
            "tg",
            "ru"
        ]
    },
    "TK": {
        "name": "Tokelau",
        "native": "Tokelau",
        "phone": "690",
        "continent": "OC",
        "capital": "Fakaofo",
        "currency": "NZD",
        "languages": [
            "en"
        ]
    },
    "TL": {
        "name": "East Timor",
        "native": "Timor-Leste",
        "phone": "670",
        "continent": "OC",
        "capital": "Dili",
        "currency": "USD",
        "languages": [
            "pt"
        ]
    },
    "TM": {
        "name": "Turkmenistan",
        "native": "Türkmenistan",
        "phone": "993",
        "continent": "AS",
        "capital": "Ashgabat",
        "currency": "TMT",
        "languages": [
            "tk",
            "ru"
        ]
    },
    "TN": {
        "name": "Tunisia",
        "native": "تونس",
        "phone": "216",
        "continent": "AF",
        "capital": "Tunis",
        "currency": "TND",
        "languages": [
            "ar"
        ]
    },
    "TO": {
        "name": "Tonga",
        "native": "Tonga",
        "phone": "676",
        "continent": "OC",
        "capital": "Nuku'alofa",
        "currency": "TOP",
        "languages": [
            "en",
            "to"
        ]
    },
    "TR": {
        "name": "Turkey",
        "native": "Türkiye",
        "phone": "90",
        "continent": "AS",
        "capital": "Ankara",
        "currency": "TRY",
        "languages": [
            "tr"
        ]
    },
    "TT": {
        "name": "Trinidad and Tobago",
        "native": "Trinidad and Tobago",
        "phone": "1868",
        "continent": "NA",
        "capital": "Port of Spain",
        "currency": "TTD",
        "languages": [
            "en"
        ]
    },
    "TV": {
        "name": "Tuvalu",
        "native": "Tuvalu",
        "phone": "688",
        "continent": "OC",
        "capital": "Funafuti",
        "currency": "AUD",
        "languages": [
            "en"
        ]
    },
    "TW": {
        "name": "Taiwan",
        "native": "臺灣",
        "phone": "886",
        "continent": "AS",
        "capital": "Taipei",
        "currency": "TWD",
        "languages": [
            "zh"
        ]
    },
    "TZ": {
        "name": "Tanzania",
        "native": "Tanzania",
        "phone": "255",
        "continent": "AF",
        "capital": "Dodoma",
        "currency": "TZS",
        "languages": [
            "sw",
            "en"
        ]
    },
    "UA": {
        "name": "Ukraine",
        "native": "Україна",
        "phone": "380",
        "continent": "EU",
        "capital": "Kyiv",
        "currency": "UAH",
        "languages": [
            "uk"
        ]
    },
    "UG": {
        "name": "Uganda",
        "native": "Uganda",
        "phone": "256",
        "continent": "AF",
        "capital": "Kampala",
        "currency": "UGX",
        "languages": [
            "en",
            "sw"
        ]
    },
    "UM": {
        "name": "U.S. Minor Outlying Islands",
        "native": "United States Minor Outlying Islands",
        "phone": "",
        "continent": "OC",
        "capital": "",
        "currency": "USD",
        "languages": [
            "en"
        ]
    },
    "US": {
        "name": "United States",
        "native": "United States",
        "phone": "1",
        "continent": "NA",
        "capital": "Washington D.C.",
        "currency": "USD,USN,USS",
        "languages": [
            "en"
        ]
    },
    "UY": {
        "name": "Uruguay",
        "native": "Uruguai",
        "phone": "598",
        "continent": "SA",
        "capital": "Montevideo",
        "currency": "UYI,UYU",
        "languages": ["es"]
    },
    "UZ": {
        "name": "Uzbekistan",
        "native": "O‘zbekiston",
        "phone": "998",
        "continent": "AS",
        "capital": "Tashkent",
        "currency": "UZS",
        "languages": [
            "uz",
            "ru"
        ]
    },
    "VA": {
        "name": "Vatican City",
        "native": "Vaticano",
        "phone": "39066,379",
        "continent": "EU",
        "capital": "Vatican City",
        "currency": "EUR",
        "languages": [
            "it",
            "la"
        ]
    },
    "VC": {
        "name": "Saint Vincent and the Grenadines",
        "native": "Saint Vincent and the Grenadines",
        "phone": "1784",
        "continent": "NA",
        "capital": "Kingstown",
        "currency": "XCD",
        "languages": [
            "en"
        ]
    },
    "VE": {
        "name": "Venezuela",
        "native": "Venezuela",
        "phone": "58",
        "continent": "SA",
        "capital": "Caracas",
        "currency": "VEF",
        "languages": [
            "es"
        ]
    },
    "VG": {
        "name": "British Virgin Islands",
        "native": "British Virgin Islands",
        "phone": "1284",
        "continent": "NA",
        "capital": "Road Town",
        "currency": "USD",
        "languages": [
            "en"
        ]
    },
    "VI": {
        "name": "U.S. Virgin Islands",
        "native": "United States Virgin Islands",
        "phone": "1340",
        "continent": "NA",
        "capital": "Charlotte Amalie",
        "currency": "USD",
        "languages": [
            "en"
        ]
    },
    "VN": {
        "name": "Vietnam",
        "native": "Việt Nam",
        "phone": "84",
        "continent": "AS",
        "capital": "Hanoi",
        "currency": "VND",
        "languages": [
            "vi"
        ]
    },
    "VU": {
        "name": "Vanuatu",
        "native": "Vanuatu",
        "phone": "678",
        "continent": "OC",
        "capital": "Port Vila",
        "currency": "VUV",
        "languages": ["bi", "en", "fr"]
    },
    "WF": {
        "name": "Wallis and Futuna",
        "native": "Wallis et Futuna",
        "phone": "681",
        "continent": "OC",
        "capital": "Mata-Utu",
        "currency": "XPF",
        "languages": ["fr"]
    },
    "WS": {
        "name": "Samoa",
        "native": "Samoa",
        "phone": "685",
        "continent": "OC",
        "capital": "Apia",
        "currency": "WST",
        "languages": ["sm", "en"]
    },
    "XK": {
        "name": "Kosovo",
        "native": "Republika e Kosovës",
        "phone": "377,381,386",
        "continent": "EU",
        "capital": "Pristina",
        "currency": "EUR",
        "languages": ["sq", "sr"]
    },
    "YE": {
        "name": "Yemen",
        "native": "اليَمَن",
        "phone": "967",
        "continent": "AS",
        "capital": "Sana'a",
        "currency": "YER",
        "languages": ["ar"]
    },
    "YT": {
        "name": "Mayotte",
        "native": "Mayotte",
        "phone": "262",
        "continent": "AF",
        "capital": "Mamoudzou",
        "currency": "EUR",
        "languages": ["fr"]
    },
    "ZA": {
        "name": "South Africa",
        "native": "South Africa",
        "phone": "27",
        "continent": "AF",
        "capital": "Pretoria",
        "currency": "ZAR",
        "languages": ["af", "en", "nr", "st", "ss", "tn", "ts", "ve", "xh", "zu"]
    },
    "ZM": {
        "name": "Zambia", "native": "Zambia",
        "phone": "260",
        "continent": "AF",
        "capital": "Lusaka",
        "currency": "ZMK",
        "languages": ["en"]
    },
    "ZW": {
        "name": "Zimbabwe", "native": "Zimbabwe",
        "phone": "263",
        "continent": "AF",
        "capital": "Harare",
        "currency": "ZWL",
        "languages": ["en", "sn", "nd"]
    }
}
countries.each do |c|
  country = Country.new
  puts "iso2: #{iso2 = c[0]}"
  puts "name_en: #{name_en= c[1][:name]}"
  puts "native: #{name_native=c[1][:native]}"
  puts "phone_code: #{phone_code = c[1][:phone]}"
  country.code_iso2 = iso2
  country.name_en= name_en
  country.name_native= name_native
  country.phone_code= phone_code
  country.continent = Continent.where(code: c[1][:continent]).first
  country.save

  puts c[1][:languages].each {|lg| CountryLanguage.create(country: country, language: Language.where(code: lg).first)}


  #puts "\n\n\n#{c[:name][:native]},#{c.class}\n-"

end

####################################################
#COUNTRIES

#FIATCURRENCIES
####################################################
real = FiatCurrency.create(country_name: 'Brasil', name: 'Real', code: 'BRL', symbol: 'R$')
novo_sol = FiatCurrency.create(country_name: 'Peru', name: 'Nuevo Sol', code: 'PEN', symbol: 'S/.')
peso_uruguaio = FiatCurrency.create(country_name: 'Uruguai', name: 'Peso Uruguaio', code: 'UYU', symbol: '$')
peso_argentino = FiatCurrency.create(country_name: 'Argentina', name: 'Peso Argentino', code: 'ARS', symbol: '$')
peso_chileno = FiatCurrency.create(country_name: 'Chile', name: 'Peso Chileno', code: 'CLP', symbol: '$')
guarani = FiatCurrency.create(country_name: 'Paraguai', name: 'Guarani', code: 'CLP', symbol: '₲')

fiats ={
    "USD": {
        "symbol": "$",
        "name": "US Dollar",
        "symbol_native": "$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "USD",
        "name_plural": "US dollars"
    },
    "CAD": {
        "symbol": "CA$",
        "name": "Canadian Dollar",
        "symbol_native": "$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "CAD",
        "name_plural": "Canadian dollars"
    },
    "EUR": {
        "symbol": "€",
        "name": "Euro",
        "symbol_native": "€",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "EUR",
        "name_plural": "euros"
    },
    "AED": {
        "symbol": "AED",
        "name": "United Arab Emirates Dirham",
        "symbol_native": "د.إ.‏",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "AED",
        "name_plural": "UAE dirhams"
    },
    "AFN": {
        "symbol": "Af",
        "name": "Afghan Afghani",
        "symbol_native": "؋",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "AFN",
        "name_plural": "Afghan Afghanis"
    },
    "ALL": {
        "symbol": "ALL",
        "name": "Albanian Lek",
        "symbol_native": "Lek",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "ALL",
        "name_plural": "Albanian lekë"
    },
    "AMD": {
        "symbol": "AMD",
        "name": "Armenian Dram",
        "symbol_native": "դր.",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "AMD",
        "name_plural": "Armenian drams"
    },
    "ARS": {
        "symbol": "AR$",
        "name": "Argentine Peso",
        "symbol_native": "$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "ARS",
        "name_plural": "Argentine pesos"
    },
    "AUD": {
        "symbol": "AU$",
        "name": "Australian Dollar",
        "symbol_native": "$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "AUD",
        "name_plural": "Australian dollars"
    },
    "AZN": {
        "symbol": "man.",
        "name": "Azerbaijani Manat",
        "symbol_native": "ман.",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "AZN",
        "name_plural": "Azerbaijani manats"
    },
    "BAM": {
        "symbol": "KM",
        "name": "Bosnia-Herzegovina Convertible Mark",
        "symbol_native": "KM",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "BAM",
        "name_plural": "Bosnia-Herzegovina convertible marks"
    },
    "BDT": {
        "symbol": "Tk",
        "name": "Bangladeshi Taka",
        "symbol_native": "৳",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "BDT",
        "name_plural": "Bangladeshi takas"
    },
    "BGN": {
        "symbol": "BGN",
        "name": "Bulgarian Lev",
        "symbol_native": "лв.",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "BGN",
        "name_plural": "Bulgarian leva"
    },
    "BHD": {
        "symbol": "BD",
        "name": "Bahraini Dinar",
        "symbol_native": "د.ب.‏",
        "decimal_digits": 3,
        "rounding": 0,
        "code": "BHD",
        "name_plural": "Bahraini dinars"
    },
    "BIF": {
        "symbol": "FBu",
        "name": "Burundian Franc",
        "symbol_native": "FBu",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "BIF",
        "name_plural": "Burundian francs"
    },
    "BND": {
        "symbol": "BN$",
        "name": "Brunei Dollar",
        "symbol_native": "$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "BND",
        "name_plural": "Brunei dollars"
    },
    "BOB": {
        "symbol": "Bs",
        "name": "Bolivian Boliviano",
        "symbol_native": "Bs",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "BOB",
        "name_plural": "Bolivian bolivianos"
    },
    "BRL": {
        "symbol": "R$",
        "name": "Brazilian Real",
        "symbol_native": "R$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "BRL",
        "name_plural": "Brazilian reals"
    },
    "BWP": {
        "symbol": "BWP",
        "name": "Botswanan Pula",
        "symbol_native": "P",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "BWP",
        "name_plural": "Botswanan pulas"
    },
    "BYR": {
        "symbol": "BYR",
        "name": "Belarusian Ruble",
        "symbol_native": "BYR",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "BYR",
        "name_plural": "Belarusian rubles"
    },
    "BZD": {
        "symbol": "BZ$",
        "name": "Belize Dollar",
        "symbol_native": "$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "BZD",
        "name_plural": "Belize dollars"
    },
    "CDF": {
        "symbol": "CDF",
        "name": "Congolese Franc",
        "symbol_native": "FrCD",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "CDF",
        "name_plural": "Congolese francs"
    },
    "CHF": {
        "symbol": "CHF",
        "name": "Swiss Franc",
        "symbol_native": "CHF",
        "decimal_digits": 2,
        "rounding": 0.05,
        "code": "CHF",
        "name_plural": "Swiss francs"
    },
    "CLP": {
        "symbol": "CL$",
        "name": "Chilean Peso",
        "symbol_native": "$",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "CLP",
        "name_plural": "Chilean pesos"
    },
    "CNY": {
        "symbol": "CN¥",
        "name": "Chinese Yuan",
        "symbol_native": "CN¥",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "CNY",
        "name_plural": "Chinese yuan"
    },
    "COP": {
        "symbol": "CO$",
        "name": "Colombian Peso",
        "symbol_native": "$",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "COP",
        "name_plural": "Colombian pesos"
    },
    "CRC": {
        "symbol": "₡",
        "name": "Costa Rican Colón",
        "symbol_native": "₡",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "CRC",
        "name_plural": "Costa Rican colóns"
    },
    "CVE": {
        "symbol": "CV$",
        "name": "Cape Verdean Escudo",
        "symbol_native": "CV$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "CVE",
        "name_plural": "Cape Verdean escudos"
    },
    "CZK": {
        "symbol": "Kč",
        "name": "Czech Republic Koruna",
        "symbol_native": "Kč",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "CZK",
        "name_plural": "Czech Republic korunas"
    },
    "DJF": {
        "symbol": "Fdj",
        "name": "Djiboutian Franc",
        "symbol_native": "Fdj",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "DJF",
        "name_plural": "Djiboutian francs"
    },
    "DKK": {
        "symbol": "Dkr",
        "name": "Danish Krone",
        "symbol_native": "kr",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "DKK",
        "name_plural": "Danish kroner"
    },
    "DOP": {
        "symbol": "RD$",
        "name": "Dominican Peso",
        "symbol_native": "RD$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "DOP",
        "name_plural": "Dominican pesos"
    },
    "DZD": {
        "symbol": "DA",
        "name": "Algerian Dinar",
        "symbol_native": "د.ج.‏",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "DZD",
        "name_plural": "Algerian dinars"
    },
    "EEK": {
        "symbol": "Ekr",
        "name": "Estonian Kroon",
        "symbol_native": "kr",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "EEK",
        "name_plural": "Estonian kroons"
    },
    "EGP": {
        "symbol": "EGP",
        "name": "Egyptian Pound",
        "symbol_native": "ج.م.‏",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "EGP",
        "name_plural": "Egyptian pounds"
    },
    "ERN": {
        "symbol": "Nfk",
        "name": "Eritrean Nakfa",
        "symbol_native": "Nfk",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "ERN",
        "name_plural": "Eritrean nakfas"
    },
    "ETB": {
        "symbol": "Br",
        "name": "Ethiopian Birr",
        "symbol_native": "Br",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "ETB",
        "name_plural": "Ethiopian birrs"
    },
    "GBP": {
        "symbol": "£",
        "name": "British Pound Sterling",
        "symbol_native": "£",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "GBP",
        "name_plural": "British pounds sterling"
    },
    "GEL": {
        "symbol": "GEL",
        "name": "Georgian Lari",
        "symbol_native": "GEL",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "GEL",
        "name_plural": "Georgian laris"
    },
    "GHS": {
        "symbol": "GH₵",
        "name": "Ghanaian Cedi",
        "symbol_native": "GH₵",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "GHS",
        "name_plural": "Ghanaian cedis"
    },
    "GNF": {
        "symbol": "FG",
        "name": "Guinean Franc",
        "symbol_native": "FG",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "GNF",
        "name_plural": "Guinean francs"
    },
    "GTQ": {
        "symbol": "GTQ",
        "name": "Guatemalan Quetzal",
        "symbol_native": "Q",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "GTQ",
        "name_plural": "Guatemalan quetzals"
    },
    "HKD": {
        "symbol": "HK$",
        "name": "Hong Kong Dollar",
        "symbol_native": "$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "HKD",
        "name_plural": "Hong Kong dollars"
    },
    "HNL": {
        "symbol": "HNL",
        "name": "Honduran Lempira",
        "symbol_native": "L",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "HNL",
        "name_plural": "Honduran lempiras"
    },
    "HRK": {
        "symbol": "kn",
        "name": "Croatian Kuna",
        "symbol_native": "kn",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "HRK",
        "name_plural": "Croatian kunas"
    },
    "HUF": {
        "symbol": "Ft",
        "name": "Hungarian Forint",
        "symbol_native": "Ft",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "HUF",
        "name_plural": "Hungarian forints"
    },
    "IDR": {
        "symbol": "Rp",
        "name": "Indonesian Rupiah",
        "symbol_native": "Rp",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "IDR",
        "name_plural": "Indonesian rupiahs"
    },
    "ILS": {
        "symbol": "₪",
        "name": "Israeli New Sheqel",
        "symbol_native": "₪",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "ILS",
        "name_plural": "Israeli new sheqels"
    },
    "INR": {
        "symbol": "Rs",
        "name": "Indian Rupee",
        "symbol_native": "টকা",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "INR",
        "name_plural": "Indian rupees"
    },
    "IQD": {
        "symbol": "IQD",
        "name": "Iraqi Dinar",
        "symbol_native": "د.ع.‏",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "IQD",
        "name_plural": "Iraqi dinars"
    },
    "IRR": {
        "symbol": "IRR",
        "name": "Iranian Rial",
        "symbol_native": "﷼",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "IRR",
        "name_plural": "Iranian rials"
    },
    "ISK": {
        "symbol": "Ikr",
        "name": "Icelandic Króna",
        "symbol_native": "kr",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "ISK",
        "name_plural": "Icelandic krónur"
    },
    "JMD": {
        "symbol": "J$",
        "name": "Jamaican Dollar",
        "symbol_native": "$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "JMD",
        "name_plural": "Jamaican dollars"
    },
    "JOD": {
        "symbol": "JD",
        "name": "Jordanian Dinar",
        "symbol_native": "د.أ.‏",
        "decimal_digits": 3,
        "rounding": 0,
        "code": "JOD",
        "name_plural": "Jordanian dinars"
    },
    "JPY": {
        "symbol": "¥",
        "name": "Japanese Yen",
        "symbol_native": "￥",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "JPY",
        "name_plural": "Japanese yen"
    },
    "KES": {
        "symbol": "Ksh",
        "name": "Kenyan Shilling",
        "symbol_native": "Ksh",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "KES",
        "name_plural": "Kenyan shillings"
    },
    "KHR": {
        "symbol": "KHR",
        "name": "Cambodian Riel",
        "symbol_native": "៛",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "KHR",
        "name_plural": "Cambodian riels"
    },
    "KMF": {
        "symbol": "CF",
        "name": "Comorian Franc",
        "symbol_native": "FC",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "KMF",
        "name_plural": "Comorian francs"
    },
    "KRW": {
        "symbol": "₩",
        "name": "South Korean Won",
        "symbol_native": "₩",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "KRW",
        "name_plural": "South Korean won"
    },
    "KWD": {
        "symbol": "KD",
        "name": "Kuwaiti Dinar",
        "symbol_native": "د.ك.‏",
        "decimal_digits": 3,
        "rounding": 0,
        "code": "KWD",
        "name_plural": "Kuwaiti dinars"
    },
    "KZT": {
        "symbol": "KZT",
        "name": "Kazakhstani Tenge",
        "symbol_native": "тңг.",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "KZT",
        "name_plural": "Kazakhstani tenges"
    },
    "LBP": {
        "symbol": "LB£",
        "name": "Lebanese Pound",
        "symbol_native": "ل.ل.‏",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "LBP",
        "name_plural": "Lebanese pounds"
    },
    "LKR": {
        "symbol": "SLRs",
        "name": "Sri Lankan Rupee",
        "symbol_native": "SL Re",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "LKR",
        "name_plural": "Sri Lankan rupees"
    },
    "LTL": {
        "symbol": "Lt",
        "name": "Lithuanian Litas",
        "symbol_native": "Lt",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "LTL",
        "name_plural": "Lithuanian litai"
    },
    "LVL": {
        "symbol": "Ls",
        "name": "Latvian Lats",
        "symbol_native": "Ls",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "LVL",
        "name_plural": "Latvian lati"
    },
    "LYD": {
        "symbol": "LD",
        "name": "Libyan Dinar",
        "symbol_native": "د.ل.‏",
        "decimal_digits": 3,
        "rounding": 0,
        "code": "LYD",
        "name_plural": "Libyan dinars"
    },
    "MAD": {
        "symbol": "MAD",
        "name": "Moroccan Dirham",
        "symbol_native": "د.م.‏",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "MAD",
        "name_plural": "Moroccan dirhams"
    },
    "MDL": {
        "symbol": "MDL",
        "name": "Moldovan Leu",
        "symbol_native": "MDL",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "MDL",
        "name_plural": "Moldovan lei"
    },
    "MGA": {
        "symbol": "MGA",
        "name": "Malagasy Ariary",
        "symbol_native": "MGA",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "MGA",
        "name_plural": "Malagasy Ariaries"
    },
    "MKD": {
        "symbol": "MKD",
        "name": "Macedonian Denar",
        "symbol_native": "MKD",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "MKD",
        "name_plural": "Macedonian denari"
    },
    "MMK": {
        "symbol": "MMK",
        "name": "Myanma Kyat",
        "symbol_native": "K",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "MMK",
        "name_plural": "Myanma kyats"
    },
    "MOP": {
        "symbol": "MOP$",
        "name": "Macanese Pataca",
        "symbol_native": "MOP$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "MOP",
        "name_plural": "Macanese patacas"
    },
    "MUR": {
        "symbol": "MURs",
        "name": "Mauritian Rupee",
        "symbol_native": "MURs",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "MUR",
        "name_plural": "Mauritian rupees"
    },
    "MXN": {
        "symbol": "MX$",
        "name": "Mexican Peso",
        "symbol_native": "$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "MXN",
        "name_plural": "Mexican pesos"
    },
    "MYR": {
        "symbol": "RM",
        "name": "Malaysian Ringgit",
        "symbol_native": "RM",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "MYR",
        "name_plural": "Malaysian ringgits"
    },
    "MZN": {
        "symbol": "MTn",
        "name": "Mozambican Metical",
        "symbol_native": "MTn",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "MZN",
        "name_plural": "Mozambican meticals"
    },
    "NAD": {
        "symbol": "N$",
        "name": "Namibian Dollar",
        "symbol_native": "N$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "NAD",
        "name_plural": "Namibian dollars"
    },
    "NGN": {
        "symbol": "₦",
        "name": "Nigerian Naira",
        "symbol_native": "₦",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "NGN",
        "name_plural": "Nigerian nairas"
    },
    "NIO": {
        "symbol": "C$",
        "name": "Nicaraguan Córdoba",
        "symbol_native": "C$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "NIO",
        "name_plural": "Nicaraguan córdobas"
    },
    "NOK": {
        "symbol": "Nkr",
        "name": "Norwegian Krone",
        "symbol_native": "kr",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "NOK",
        "name_plural": "Norwegian kroner"
    },
    "NPR": {
        "symbol": "NPRs",
        "name": "Nepalese Rupee",
        "symbol_native": "नेरू",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "NPR",
        "name_plural": "Nepalese rupees"
    },
    "NZD": {
        "symbol": "NZ$",
        "name": "New Zealand Dollar",
        "symbol_native": "$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "NZD",
        "name_plural": "New Zealand dollars"
    },
    "OMR": {
        "symbol": "OMR",
        "name": "Omani Rial",
        "symbol_native": "ر.ع.‏",
        "decimal_digits": 3,
        "rounding": 0,
        "code": "OMR",
        "name_plural": "Omani rials"
    },
    "PAB": {
        "symbol": "B/.",
        "name": "Panamanian Balboa",
        "symbol_native": "B/.",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "PAB",
        "name_plural": "Panamanian balboas"
    },
    "PEN": {
        "symbol": "S/.",
        "name": "Peruvian Nuevo Sol",
        "symbol_native": "S/.",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "PEN",
        "name_plural": "Peruvian nuevos soles"
    },
    "PHP": {
        "symbol": "₱",
        "name": "Philippine Peso",
        "symbol_native": "₱",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "PHP",
        "name_plural": "Philippine pesos"
    },
    "PKR": {
        "symbol": "PKRs",
        "name": "Pakistani Rupee",
        "symbol_native": "₨",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "PKR",
        "name_plural": "Pakistani rupees"
    },
    "PLN": {
        "symbol": "zł",
        "name": "Polish Zloty",
        "symbol_native": "zł",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "PLN",
        "name_plural": "Polish zlotys"
    },
    "PYG": {
        "symbol": "₲",
        "name": "Paraguayan Guarani",
        "symbol_native": "₲",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "PYG",
        "name_plural": "Paraguayan guaranis"
    },
    "QAR": {
        "symbol": "QR",
        "name": "Qatari Rial",
        "symbol_native": "ر.ق.‏",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "QAR",
        "name_plural": "Qatari rials"
    },
    "RON": {
        "symbol": "RON",
        "name": "Romanian Leu",
        "symbol_native": "RON",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "RON",
        "name_plural": "Romanian lei"
    },
    "RSD": {
        "symbol": "din.",
        "name": "Serbian Dinar",
        "symbol_native": "дин.",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "RSD",
        "name_plural": "Serbian dinars"
    },
    "RUB": {
        "symbol": "RUB",
        "name": "Russian Ruble",
        "symbol_native": "руб.",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "RUB",
        "name_plural": "Russian rubles"
    },
    "RWF": {
        "symbol": "RWF",
        "name": "Rwandan Franc",
        "symbol_native": "FR",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "RWF",
        "name_plural": "Rwandan francs"
    },
    "SAR": {
        "symbol": "SR",
        "name": "Saudi Riyal",
        "symbol_native": "ر.س.‏",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "SAR",
        "name_plural": "Saudi riyals"
    },
    "SDG": {
        "symbol": "SDG",
        "name": "Sudanese Pound",
        "symbol_native": "SDG",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "SDG",
        "name_plural": "Sudanese pounds"
    },
    "SEK": {
        "symbol": "Skr",
        "name": "Swedish Krona",
        "symbol_native": "kr",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "SEK",
        "name_plural": "Swedish kronor"
    },
    "SGD": {
        "symbol": "S$",
        "name": "Singapore Dollar",
        "symbol_native": "$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "SGD",
        "name_plural": "Singapore dollars"
    },
    "SOS": {
        "symbol": "Ssh",
        "name": "Somali Shilling",
        "symbol_native": "Ssh",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "SOS",
        "name_plural": "Somali shillings"
    },
    "SYP": {
        "symbol": "SY£",
        "name": "Syrian Pound",
        "symbol_native": "ل.س.‏",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "SYP",
        "name_plural": "Syrian pounds"
    },
    "THB": {
        "symbol": "฿",
        "name": "Thai Baht",
        "symbol_native": "฿",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "THB",
        "name_plural": "Thai baht"
    },
    "TND": {
        "symbol": "DT",
        "name": "Tunisian Dinar",
        "symbol_native": "د.ت.‏",
        "decimal_digits": 3,
        "rounding": 0,
        "code": "TND",
        "name_plural": "Tunisian dinars"
    },
    "TOP": {
        "symbol": "T$",
        "name": "Tongan Paʻanga",
        "symbol_native": "T$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "TOP",
        "name_plural": "Tongan paʻanga"
    },
    "TRY": {
        "symbol": "TL",
        "name": "Turkish Lira",
        "symbol_native": "TL",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "TRY",
        "name_plural": "Turkish Lira"
    },
    "TTD": {
        "symbol": "TT$",
        "name": "Trinidad and Tobago Dollar",
        "symbol_native": "$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "TTD",
        "name_plural": "Trinidad and Tobago dollars"
    },
    "TWD": {
        "symbol": "NT$",
        "name": "New Taiwan Dollar",
        "symbol_native": "NT$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "TWD",
        "name_plural": "New Taiwan dollars"
    },
    "TZS": {
        "symbol": "TSh",
        "name": "Tanzanian Shilling",
        "symbol_native": "TSh",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "TZS",
        "name_plural": "Tanzanian shillings"
    },
    "UAH": {
        "symbol": "₴",
        "name": "Ukrainian Hryvnia",
        "symbol_native": "₴",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "UAH",
        "name_plural": "Ukrainian hryvnias"
    },
    "UGX": {
        "symbol": "USh",
        "name": "Ugandan Shilling",
        "symbol_native": "USh",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "UGX",
        "name_plural": "Ugandan shillings"
    },
    "UYU": {
        "symbol": "$U",
        "name": "Uruguayan Peso",
        "symbol_native": "$",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "UYU",
        "name_plural": "Uruguayan pesos"
    },
    "UZS": {
        "symbol": "UZS",
        "name": "Uzbekistan Som",
        "symbol_native": "UZS",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "UZS",
        "name_plural": "Uzbekistan som"
    },
    "VEF": {
        "symbol": "Bs.F.",
        "name": "Venezuelan Bolívar",
        "symbol_native": "Bs.F.",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "VEF",
        "name_plural": "Venezuelan bolívars"
    },
    "VND": {
        "symbol": "₫",
        "name": "Vietnamese Dong",
        "symbol_native": "₫",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "VND",
        "name_plural": "Vietnamese dong"
    },
    "XAF": {
        "symbol": "FCFA",
        "name": "CFA Franc BEAC",
        "symbol_native": "FCFA",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "XAF",
        "name_plural": "CFA francs BEAC"
    },
    "XOF": {
        "symbol": "CFA",
        "name": "CFA Franc BCEAO",
        "symbol_native": "CFA",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "XOF",
        "name_plural": "CFA francs BCEAO"
    },
    "YER": {
        "symbol": "YR",
        "name": "Yemeni Rial",
        "symbol_native": "ر.ي.‏",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "YER",
        "name_plural": "Yemeni rials"
    },
    "ZAR": {
        "symbol": "R",
        "name": "South African Rand",
        "symbol_native": "R",
        "decimal_digits": 2,
        "rounding": 0,
        "code": "ZAR",
        "name_plural": "South African rand"
    },
    "ZMK": {
        "symbol": "ZK",
        "name": "Zambian Kwacha",
        "symbol_native": "ZK",
        "decimal_digits": 0,
        "rounding": 0,
        "code": "ZMK",
        "name_plural": "Zambian kwachas"
    }
}
fiats.each do |fc|
  f = FiatCurrency.new
  f.name = fc[1][:name]
  f.code = fc[1][:code]
  f.symbol = fc[1][:symbol_native]
  puts "#{f.name} - #{f.save}"
end
####################################################
#FIATCURRENCIES

#CRYPTOCURRENCIES
####################################################
require 'open-uri'
bitcoin = CryptoCurrency.create(name: 'Bitcoin', code: 'BTC', symbol: 'Ƀ')
litecoin = CryptoCurrency.create(name: 'Litecoin', code: 'LTC', symbol: 'Ł')
dogecoin = CryptoCurrency.create(name: 'Dogecoin', code: 'DOGE', symbol: 'Ð')

page = Nokogiri::HTML(open("https://coinmarketcap.com/currencies/views/all/"))
allTr = page.css('tr')
puts allTr.class
allTr.each do |tr|
  allTd = (tr.css('td'))
  if !allTd[1].nil? && !allTd[2].nil?
    name = allTd[1].text.to_s.delete("\t").delete("\n").split.join(" ")
    next if name.to_s.end_with?('...')
    code = allTd[2].text.to_s.delete("\t").delete("\n").delete(" ")
    cp = CryptoCurrency.new
    cp.name = name
    cp.code = code
    if cp.save
      puts "#{name} saved"
    else
      puts "#{name} not saved"
    end
  end
end
####################################################
#CRYPTOCURRENCIES

#CATEGORIES
####################################################
page = Nokogiri::HTML(open("https://developer.paypal.com/docs/classic/adaptive-accounts/integration-guide/ACBusinessCategories/"))
allTr = page.css('tr')
puts allTr.length
allTr.each do |tr|
    allTd = (tr.css('td'))
    if !allTd[1].nil?
        #category_id =allTd[0].text.to_s.delete("\t").delete("\n").delete(" ")
        name =allTd[1].text.to_s.delete("\t").delete("\n")
        Category.create(name: name)
    end
end
####################################################
#CATEGORIES
#USERS
####################################################
j_u = User.create(email: "joao@joao.com", password:"password", password_confirmation: "password")
j_u_2 = User.create(email: "joao1@joao1.com", password:"password", password_confirmation: "password")

####################################################
#USERS


#ADDRESSES
####################################################
require 'faker'
i = 0
j_u = User.where(email:"joao@joao.com" ).first
j_u_2 = User.where(email:"joao1@joao1.com" ).first
20.times do
  i +=1
  fk_addr = Faker::Address
  addr = Address.new
  addr.user = j_u if i.even?
  addr.user = j_u_2 if !i.even?
  addr.business_name = Faker::Company.name
  addr.web_site = Faker::Internet.url
  addr.country = Country.where(code_iso2: fk_addr.country_code).first || Country.where(code_iso2: "BR").first
  addr.state = fk_addr.state_abbr
  addr.city = fk_addr.city
  addr.zip_code = fk_addr.zip_code
  addr.street = fk_addr.street_name
  addr.number = fk_addr.building_number
  addr.complement = fk_addr.secondary_address
  addr.emails= {"1" => Faker::Internet.email, "2" => Faker::Internet.email}
  addr.phone_numbers= {"1" => "+5521992064121", "2" => "+12505554848"}
  addr.crypto_currencies_accepted= {"1" => "BTC", "2" => "LTC", "3" => "USD", "4" => "ETC", "5" => "XRP"}
  addr.latitude = fk_addr.latitude
  addr.longitude = fk_addr.longitude
  puts addr.save
end


Address.create(user: j_u,
               country: Country.where(code_iso2: "BR").first,
               state: "RJ",
               city: "Rio de Janeiro",
               zip_code: "20510-060",
               district: "Tijuca",
               street: "Rua Uruguai",
               number: "247",
               complement: "C01",
               reference_point: "Em frente à casa Show",
               emails: {"1" => "jvsdc1992@gmail.com", "2" => "soares.cunha.joao@gmail.com", "3" => "ceo@pagcrypto.com"},
               phone_numbers: {"1" => "+5521992064121", "2" => "+12505554848"},
               crypto_currencies_accepted: {"1" => "BTC", "2" => "LTC", "3" => "USD"},


)
Address.create(user: j_u_2,
               country: Country.where(code_iso2: "BR").first,
               state: "RJ",
               city: "Rio de Janeiro",
               zip_code: "20510-060",
               district: "Tijuca",
               street: "Rua Uruguai",
               number: "321",
               complement: "C01",
               reference_point: "Em frente à casa Show",
               emails: {"1" => "jvsdc1992@gmail.com", "2" => "soares.cunha.joao@gmail.com", "3" => "ceo@pagcrypto.com"},
               phone_numbers: {"1" => "+5521992064121", "2" => "+12505554848"},
               crypto_currencies_accepted: {"1" => "BTC", "2" => "LTC", "3" => "USD", "31" => "ETH","33" => "ETC","23" => "GBG" }
)
####################################################
#ADDRESSES


