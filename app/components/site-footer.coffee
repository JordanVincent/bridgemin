`import Ember from "ember";`

SiteFooter = Ember.Component.extend
  classNames: ['site-footer']
  year: new Date().getFullYear()

`export default SiteFooter;`