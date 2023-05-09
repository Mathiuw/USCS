class pilha {
  constructor() {
    this.size = 0;
    this.head = null;
    this.tail = null;
  }

  push(item) {
    let no_trab = new node(item);
    if (this.size == 0) {
      this.head = no_trab;
      this.tail = no_trab;
    } else {
      this.tail.next = no_trab;
      no_trab.prev = this.tail;
      this.tail = no_trab;
    }
    this.size++;
  }

  pop() {
    let retorno;
    if (this.size == 0) {
      console.log("Pilha vazia");
      return null;
    } else if (this.size == 1) {
      retorno = this.tail.item;
      this.head = null;
      this.tail = null;
    } else {
      retorno = this.tail.item;
      this.tail = this.tail.prev;
      this.tail.next = null;
    }
    this.size--;
    return retorno;
  }

  imprimePilha() {
    let no_trab = this.head;
    if (this.size == 0) {
      console.log("Pilha vazia");
    } else {
      for(let i = 0; i < this.size; i++) {
        console.log("%d ", no_trab.item);
        no_trab = no_trab.next;
      }
    }
  }
}
