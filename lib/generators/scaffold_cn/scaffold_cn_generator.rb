class ScaffoldCnGenerator < Rails::Generators::NamedBase
#class Scaffold_cnGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def generate_scaffold_cn
    type = plural_name.singularize
    puts "generate #{type} template files ..."
    types = ['erb', 'slim']
    if types.include? type
      templates = [
        "lib/templates/#{type}/scaffold/_form.html.#{type}",
        "lib/templates/#{type}/scaffold/edit.html.#{type}",
        "lib/templates/#{type}/scaffold/index.html.#{type}",
        "lib/templates/#{type}/scaffold/new.html.#{type}",
        "lib/templates/#{type}/scaffold/show.html.#{type}",
        'config/locales/defaults.zh_CN.yml',
        'config/locales/models.zh_CN.yml',
        'config/locales/views.zh_CN.yml',
        'config/locales/devise.zh_CN.yml']
      templates.each do |path|
        copy_file path, path
      end
    else
      puts "The type '#{type}' not support yet."
      puts "You can choose one from [ #{types.join(',')} ]"
    end
  end  
end

