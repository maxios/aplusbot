institution = Institution.find_or_create_by(name: 'Business Information Systems')
courses = YAML.load_file File.join(Dir.pwd, 'db', 'seeds', 'courses.yml')
courses.each do |course|
  Course.find_or_create_by(institution_id: institution.id, name: course["name"])
end
