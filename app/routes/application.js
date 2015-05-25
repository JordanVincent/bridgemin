import Ember from "ember";

export default Ember.Route.extend({
  model: function(){
    return this.store.find('entry', {content_type:'2wKn6yEnZewu2SCCkus4as'})
    .then( function(a){
      // console.log(a.get('firstObject'));
      // a.get('firstObject.featuredImage').then( function(b){
      //   console.log(b.get('title'));
      // });
      return a;
    });
  }
});
