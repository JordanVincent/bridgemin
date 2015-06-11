/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'bridgemin',
    environment: environment,
    baseURL: '/',
    locationType: 'auto',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    },

    contentSecurityPolicy: {
      'connect-src': "'self' cdn.contentful.com",
      'img-src': "'self' images.contentful.com",
      'style-src': "'self' 'unsafe-inline'",
      'frame-src': "interland3.donorperfect.net www.flickr.com www.facebook.com static.ak.facebook.com s-static.ak.facebook.com",
      'script-src': "'self' 'unsafe-inline' connect.facebook.net"
    },

    ENV.contentful = {
      host: 'https://cdn.contentful.com',
      spaceId: 'aau1la373lje',
      apiToken: 'c8926c7fd57915ef72717f61993f2336777e27db10d1b7f75f96369174938b8a',
      models: {
        section: '52nbs0fDkcc2aCUAUkCAIC',
        page: '3QYmCl09M4I6oOG20Kk6KY',
        event: '7uJh6WNWBG2UEYqoqO6wmM',
        fragment: '1AbspHBo6Mmm06soSWSQY0',
        story: 'SsZpd6c7iCQOQmmQCMkI4',
        newsletter: '2lXaQcSQfSO6M6gEEIEYOg',
        report: '5ZUoeeSorSoukcAuee4ma0',
        equipmentType: '3ZNVz0wQikUuw6wYmm2cWy',
        news: '46UfMAO8HmwoCyI6waWc8A',
        staffMember: '5fCOPDjxFKE2gCKK684gUw',
        infographic: '6Q75sUxRcsEWgqc0gOWcY8'
      }
    }
  };

  if (environment === 'development') {
    // ENV.APP.LOG_RESOLVER = true;
    // ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    // ENV.APP.LOG_VIEW_LOOKUPS = true;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }

  if (environment === 'production') {
    ENV.baseURL = '/redesign';
    ENV.locationType = 'hash';

    ENV.googleAnalytics = {
      webPropertyId: 'UA-15988821-1'
    }
  }

  return ENV;
};
