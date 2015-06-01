`import Ember from "ember";`
`import CustomTemplateRouteMixin from "../../mixins/custom-template-route";`
`import BreadcrumbRouteMixin from "../../mixins/breadcrumb-route";`

SectionIndexRoute = Ember.Route.extend CustomTemplateRouteMixin, BreadcrumbRouteMixin

`export default SectionIndexRoute;`