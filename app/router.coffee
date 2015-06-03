`import Ember from 'ember';`
`import config from './config/environment';`

Router = Ember.Router.extend
  location: config.locationType

  scrollTop:( ->
    window.scrollTo(0,0)
  ).on('didTransition')

Router.map ->
  @resource 'section', { path: '/:slug' }, ->
    @resource 'page', { path: ':page_slug' }
  @route 'donate'

`export default Router;`
