import Foo from '../src/foo';

describe('Foo', ()=>{
  it('echos str', ()=>{
    let str = 'abc';
    let foo = new Foo(str);
    assert.equal(foo.echo(), str);
  })
});
