'use strict';

const EmberApp = require('ember-cli/lib/broccoli/ember-app');
const { maybeEmbroider } = require('@embroider/test-setup');

module.exports = function (defaults) {
  let options = {
    'ember-cli-image-transformer': {
      images: [
        {
          inputFilename: 'public/images/unicorn.webp',
          outputFileName: 'appicon-',
          convertTo: 'png',
          destination: 'assets/icons/',
          sizes: [32, 192, 280, 512],
        },
      ],
    },
  };

  let app = new EmberApp(defaults, options);

  return maybeEmbroider(app);
};
