`import Ember from "ember";`

NewsletterForm = Ember.Component.extend
  tagName: 'form'
  classNames: ['newsletter-form', 'form-inline']
  attributeBindings: ['name', 'action', 'target', 'method']

  name: "ccoptin"
  action: "http://visitor.r20.constantcontact.com/d.jsp"
  target: "_blank"
  method: "post"

  btnClass: 'btn-warning'
  inputId: 'emailInput'

`export default NewsletterForm;`