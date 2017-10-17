require 'locales_export_import'

#Converting CSV back to YAML:
 LocalesExportImport::Csv2Yaml.convert('crypto_coins_map_locales_en_pt_it_es.csv')

#The result will be the locale file(s) in the current working directory, one file for each locale column found in the headers. E.g. if CSV file header row was "key,en-UK,de-DE,fi-FI", then the resulting files will be en-UK.yml, de-DE.yml, and fi-FI.yml populated with corresponding translated strings.
#Note that if you already have one or several locale files in the same folder (e.g. en-UK.yml and de-DE.yml), these files will be loaded and updated with new values. That way you can import new portion of translations to already exsisting locale file, adding only the new ones while keeping the old keys/values intact.

#Output options

#If you have your own way to organize files with directories and names, you can pass an output_path and a file_prefix.

#LocalesExportImport::Csv2Yaml.convert(csv_file_name, 'config/locales/my_directory/sub_directory/', 'some_prefix_')
#And the result will be something like this:

#config/locales/my_directory/sub_directory/some_prefix_en.yml
#These arguments are optional.
