#class CnGenerator < Rails::Generators::NamedBase
class Scaffold_cnGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def generate_scaffold_cn
    templates = [
        'lib/templates/erb/scaffold/_form.html.erb',
        'lib/templates/erb/scaffold/edit.html.erb',
        'lib/templates/erb/scaffold/index.html.erb',
        'lib/templates/erb/scaffold/new.html.erb',
        'lib/templates/erb/scaffold/show.html.erb',
        'config/locales/model.zh_CN.yml',
        'config/locales/default.zh_CN.yml']
    templates.each do |path|
      copy_file path, path
    end
  end  
end
