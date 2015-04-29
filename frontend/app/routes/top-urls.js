import Ember from 'ember';

export default Ember.Route.extend({
  model: function(){
    //return [1,2,3,4]
   return $.getJSON("/api/v1/top_urls")
  }
});

