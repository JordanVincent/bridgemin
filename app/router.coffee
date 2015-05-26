`import Ember from 'ember';`
`import config from './config/environment';`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'section', { path: '/sections/:slug' }, ->
    @resource 'page', { path: 'pages/:page_slug' }

`export default Router;`
