// test/hello_test.js

import Hello from '../src/hello';

describe('Hello', ()=>{
  it('says hello', ()=>{
    let name = 'bob';
    let hello = new Hello(name);
    let message = `hello ${name}`;
    assert.equal(hello.say(), message);
  })
});