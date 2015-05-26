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
      'connect-src': "'self' cdn.contentful.com"
    },

    contentful: {
      host: 'https://cdn.contentful.com',
      spaceId: 'uuo3xbr82a31',
      apiToken: '6ae1a33264be4718edafc309c3e071bd3fa4c890a0db6221197364438bbbd8bf',
      model: {
        section: '3Cdf29xH5YmCcCOQEgiqGE',
        page: '3SWJKtyBoAc8s4m0iYuO64',
        event: '7biTVxa9MciWC2m48WIuKO',
        fragment: '9paU2Wen5eowMKSWCkAGS'
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
    ENV.baseURL = '/redesign'
  }

  return ENV;
};
