file_name = "style.css"
css_properties = Hash.new

def write_file(file_name, css_properties)
    File.open(file_name, 'w') do |f|
        f.write <<-EOF
body {
    background: #{ css_properties['background-color'] };
}

a:link, a:visited, a:hover {
    text-decoration: #{ if css_properties['underline?'] == 'y'
            'underline'
        else
            'none'
        end
    };
    color: #{ css_properties['link-color'] };
}

        EOF
    end
end

def ask(question, property, css_hash)
    puts question
    answer = gets.chomp
    css_hash[property] = answer
end

# css_properties['background-color'] = "yellow"
ask "What would you like the background color to be?", "background-color", css_properties
ask "What color would you like for links?", "link-color", css_properties
ask "Would you like links underlined?", "underline?", css_properties
write_file file_name, css_properties