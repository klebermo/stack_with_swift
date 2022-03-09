class Node<T> {
    var data: T
    var next: Node<T>?
    var previous: Node<T>?

    init(_ data: T) {
        self.data = data
        self.next = nil
        self.previous = nil
    }
}

class Stack<T> {
    var begin: Node<T>?
    var end: Node<T>?

    init() {
        self.begin = nil
        self.end = nil
    }

    func push(_ value: T) {
        var aux = begin
        var auxPrevious: Node<T>? = nil

        if begin == nil {
            begin = Node(value)
        } else {
            while(aux != nil) {
                auxPrevious = aux
                aux = aux?.next
            }
            aux = Node(value)
            aux?.previous = auxPrevious
            auxPrevious?.next = aux
            end = aux
        }
    }

    func pop() -> T? {
        if end == nil {
            return nil
        } else {
            let aux = end
            let auxPrevious = end?.previous

            auxPrevious?.next = nil
            end?.previous = nil
            end = auxPrevious

            return aux?.data
        }
    }
}
