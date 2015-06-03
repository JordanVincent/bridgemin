`import Ember from "ember";`

DonationForm = Ember.View.extend
  tagName: 'iframe'
  classNames: ['donation-form']
  attributeBindings: ['src']
  src: "https://interland3.donorperfect.net/weblink/weblink.aspx?name=E81951&id=1"

`export default DonationForm;`