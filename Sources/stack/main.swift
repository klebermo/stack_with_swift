let stack = Stack<Int>()

stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)
stack.push(5)
stack.push(6)

print("{", terminator: "")
print(stack.pop() ?? 0, terminator: ", ")
print(stack.pop() ?? 0, terminator: ", ")
print(stack.pop() ?? 0, terminator: ", ")
print(stack.pop() ?? 0, terminator: ", ")
print(stack.pop() ?? 0, terminator: ", ")
print(stack.pop() ?? 0, terminator: "")
print("}")
