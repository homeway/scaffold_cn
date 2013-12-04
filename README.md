#为 Ruby On Rails 提供更简单的中文支持

在`ruby on rails`开发中，打开`config/application.rb`中的注释，就可以使用中文的I18n翻译功能了。

##中文化的一般用法

```
config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
config.i18n.default_locale = :zh_CN
```

但真正的工作还没开始，开发者不得不大量修改view页面，包括表单、页面标题、操作按钮等。
##使用scaffold_cn让工作变得更轻松
**第一步** 包含gem
```
gem 'scaffold_cn'
```
**第二步** 执行中文模板生成的操作`rails g scaffold_cn erb`
```
$ rails g scaffold_cn erb
      create  lib/templates/erb/scaffold/_form.html.erb
      create  lib/templates/erb/scaffold/edit.html.erb
      create  lib/templates/erb/scaffold/index.html.erb
      create  lib/templates/erb/scaffold/new.html.erb
      create  lib/templates/erb/scaffold/show.html.erb
      create  config/locales/models.zh_CN.yml
      create  config/locales/defaults.zh_CN.yml
      ...
```
**第三步** 像往常一样使用`rails g scaffold`命令
至此，所获得的CRUD页面，就都是中文页面了！

##数据模型的中文化
每次添加新的数据模型，只需要在`config/locales/model.yml`中将表名称和字段名称翻译成中文，就可以完成页面的中文翻译了。

例如：
```
zh_CN:
  activerecord:
    models:
      relation: '联系人'
    attributes:
      relation:
        name: "联系人姓名"
        tel: "电话"
```

##支持Slim
如果你使用的slim来生成视图页面，只需将生成模板的命令改为：
```
rails g scaffold_cn slim
```

##高级用法
如果你打算定制自己的scaffold模板，那么只需要直接修改这些文件就可以了！
```
lib/templates/erb/scaffold/_form.html.erb
lib/templates/erb/scaffold/edit.html.erb
lib/templates/erb/scaffold/index.html.erb
lib/templates/erb/scaffold/new.html.erb
lib/templates/erb/scaffold/show.html.erb
```

本项目采用 MIT-LICENSE.