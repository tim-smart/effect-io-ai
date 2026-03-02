Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.update

Updates the MutableRef with the result of applying a function to its current value,
and returns the reference.

**Example**

```ts
import { MutableRef } from "effect"

const counter = MutableRef.make(5)

// Increment the counter
MutableRef.update(counter, (n) => n + 1)
console.log(MutableRef.get(counter)) // 6

// Chain updates (since it returns the ref)
const result = MutableRef.update(counter, (n) => n * 2)
console.log(result === counter) // true (same reference)
console.log(MutableRef.get(counter)) // 12

// Transform string
const message = MutableRef.make("hello")
MutableRef.update(message, (s) => s.toUpperCase())
console.log(MutableRef.get(message)) // "HELLO"

// Update complex objects
const user = MutableRef.make({ name: "Alice", age: 30 })
MutableRef.update(user, (u) => ({ ...u, age: u.age + 1 }))
console.log(MutableRef.get(user)) // { name: "Alice", age: 31 }

// Pipe-able version
const double = MutableRef.update((n: number) => n * 2)
double(counter)
console.log(MutableRef.get(counter)) // 24

// Array operations
const list = MutableRef.make<Array<number>>([1, 2, 3])
MutableRef.update(list, (arr) => [...arr, 4])
console.log(MutableRef.get(list)) // [1, 2, 3, 4]
```

**Signature**

```ts
declare const update: { <T>(f: (value: T) => T): (self: MutableRef<T>) => MutableRef<T>; <T>(self: MutableRef<T>, f: (value: T) => T): MutableRef<T>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L636)

Since v2.0.0