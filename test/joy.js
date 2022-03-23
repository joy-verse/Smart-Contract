const Joy = artifacts.require('Joy');

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract('Joy', function (/* accounts */) {
  it('should assert true', async function () {
    await Joy.deployed();
    return assert.isTrue(true);
  });
});
