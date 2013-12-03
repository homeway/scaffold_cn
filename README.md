#为 Ruby On Rails 提供更简单的中文支持

在`ruby on rails`开发中，打开`config/application.rb`中的注释，就可以使用中文的I18n翻译功能了。

```
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :zh_CN
```

但真正的工作还没开始，开发者不得不大量修改view页面，包括表单、页面标题、操作按钮等。

包含这个gem，可以让您的代码简单得多。

```
    gem 'scaffold_cn'
```

然后执行下面的动作
```
    rails g scaffold_cn
```
会得到这样的操作提示：
```
    $ rails g scaffoldcn
          create  lib/templates/erb/scaffold/_form.html.erb
          create  lib/templates/erb/scaffold/edit.html.erb
          create  lib/templates/erb/scaffold/index.html.erb
          create  lib/templates/erb/scaffold/new.html.erb
          create  lib/templates/erb/scaffold/show.html.erb
          create  config/locales/model.yml
          create  config/locales/zh-CN.yml
```
大功告成！

之后就可以像往常一样使用`rails g scaffold`命令了。

每次添加新的数据模型，只需要在`config/locales/model.yml`中将表名称和字段名称翻译成中文，就可以完成页面的中文翻译了。

例如：
```
zh-CN:
  activerecord:
    models:
      relation: '联系人'
    attributes:
      relation:
        name: "联系人姓名"
        tel: "电话"
```

This project rocks and uses MIT-LICENSE.