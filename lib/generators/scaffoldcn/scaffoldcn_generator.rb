#class CnGenerator < Rails::Generators::NamedBase
class ScaffoldcnGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def generate_scaffoldcn
    templates = [
        'lib/templates/erb/scaffold/_form.html.erb',
        'lib/templates/erb/scaffold/edit.html.erb',
        'lib/templates/erb/scaffold/index.html.erb',
        'lib/templates/erb/scaffold/new.html.erb',
        'lib/templates/erb/scaffold/show.html.erb',
        'config/locales/model.yml',
        'config/locales/zh-CN.yml']
    templates.each do |path|
      copy_file path, path
    end
  end  
end
