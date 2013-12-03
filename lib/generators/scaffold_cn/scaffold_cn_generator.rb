#class CnGenerator < Rails::Generators::NamedBase
class Scaffold_cnGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def generate_scaffold_cn type
    puts "type: #{type}"
    templates = [
        'lib/templates/erb/scaffold/_form.html.erb',
        'lib/templates/erb/scaffold/edit.html.erb',
        'lib/templates/erb/scaffold/index.html.erb',
        'lib/templates/erb/scaffold/new.html.erb',
        'lib/templates/erb/scaffold/show.html.erb',
        'config/locales/defaults/zh_CN.yml',
        'config/locales/models/zh_CN.yml',
        'config/locales/views/zh_CN.yml',
        'config/locales/devise/zh_CN.yml']
    templates.each do |path|
      template path, path
    end
  end  
end

