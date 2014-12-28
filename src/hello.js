export default class Hello {
  constructor(name) {
    this.name = name;
  }

  say() {
    return `hello ${this.name}`;
  }
}