require 'fileutils'

class String
	def unindent
		gsub /^#{self[/\A\s*/]}/, ''
	end
end

class ReadmeGenerator
	
	def initialize(snippets)		
		@README_FILENAME = 'README.md'
		@snippets = snippets
	end

	def self.generate(snippets)
		generator = self.new(snippets)
		generator.delete_old_readme
		generator.create_readme
	end
	
	def formatted_snippets
		@snippets.sort_by!(&:title).map do |snippet|
			[ <<-HERE.unindent
				\#\#\# #{snippet.title} - `#{snippet.shortcut}`
				```#{snippet.language}
				#{snippet.code}
				```
				<br>
				HERE
			]
		end
	end

	def create_readme
		File.open @README_FILENAME, 'w' do |file|
			file.puts readme_title
			file.puts formatted_snippets.join("\n")
			file.puts readme_footer
		end
	end
	
	def delete_old_readme
		FileUtils.rm_f @README_FILENAME
	end

	def readme_title
		%{# Snippets

		}

	end

	def readme_footer
		%{

		}
	end

end
