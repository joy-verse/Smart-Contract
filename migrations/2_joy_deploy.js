const Joy = artifacts.require('Joy');

module.exports = function (deployer) {
  deployer.deploy(Joy, 'JoyVerse', 'JOY');
};
