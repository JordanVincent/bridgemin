import Ember from "ember";

export default Ember.Route.extend({
  model: function(){
    return this.store.find('entry', {content_type:'2wKn6yEnZewu2SCCkus4as'});
  }
});
