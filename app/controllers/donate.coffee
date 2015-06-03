`import FragmentsManagerMixin from "../mixins/fragments-manager";`

DonateController = Ember.Controller.extend FragmentsManagerMixin,
  queryParams: ['amount']
  amount: null

`export default DonateController;`