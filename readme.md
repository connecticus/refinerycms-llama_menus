# Menus extension for Refinery CMS.

## How to build this extension as a gem

    cd vendor/extensions/menus
    gem build refinerycms-menus.gemspec
    gem install refinerycms-menus.gem

    If you want to use the widget remember to add it to your refinery widget configuration

    TODO - UI for multiple linkable_classes (need callback in nested_models so there is a place to
    add the JS for the menu items partials).
