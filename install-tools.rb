require 'fileutils'

scripts = Dir.glob("./scripts/*")

scripts.each do |script|
	basename = File.basename(script)
	destination = "/usr/local/bin/#{basename}"

	puts "installing #{basename}..."

	FileUtils.cp(script, destination)
	FileUtils.chmod(0755, destination)
end

puts "Successfully installled scripts"