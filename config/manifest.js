'use strict';

module.exports = function (/* environment, appConfig */) {
  // See https://zonkyio.github.io/ember-web-app for a list of
  // supported properties

  return {
    name: '#OpenTo...',
    short_name: '#OpenTo...',
    description: 'LinkedIn avatar generator',
    start_url: '/',
    scope: '/',
    display: 'standalone',
    background_color: '#fff',
    theme_color: '#fff',
    icons: [
      {
        src: '/assets/icons/appicon-32.png',
        sizes: '32x32',
        targets: ['favicon'],
      },
      ...[192, 280, 512].map((size) => ({
        src: `/assets/icons/appicon-${size}.png`,
        sizes: `${size}x${size}`,
      })),
    ],
    ms: {
      tileColor: '#fff',
    },
  };
};
