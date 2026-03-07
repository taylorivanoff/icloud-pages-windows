const path = require('path');
require('icloud-windows-base').run({
  appName: 'iCloud Pages',
  protocol: 'icloud-pages',
  icloudUrl: 'https://www.icloud.com/pages',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});
