`import Ember from 'ember';`

BreadCrumb = Ember.Component.extend
  classNames: ['bread-crumb']

  breadcrumbs: (->
    breadcrumbs = @get('route.routeName').split('.').map (item, index, names) ->
      {
        title: item.decamelize().replace('_',' ')
        link: names.slice(0, index+1).join('.')
      }
    breadcrumbs.unshiftObject
      title: 'home'
      link: 'index'
    breadcrumbs.get('lastObject').isActive = true
    breadcrumbs
  ).property()

`export default BreadCrumb;`