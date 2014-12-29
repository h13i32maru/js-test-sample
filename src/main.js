import Hello from './hello';
import Foo from './foo';

var hello = new Hello('bob');
console.log(hello.say());

var foo = new Foo('abc');
console.log(foo.echo());
