# 'site' module.
class joindin {
    include joindin::setup
    include joindin::sql
    include joindin::web
    include joindin::composer
    include joindin::app
    include joindin::test
}
