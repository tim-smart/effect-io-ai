Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.getAndUpdate

Updates the MutableRef with the result of applying a function to its current value,
and returns the previous value.

**Example**

```ts
import { MutableRef } from "effect"

const counter = MutableRef.make(5)

// Increment and get the old value
const oldValue = MutableRef.getAndUpdate(counter, (n) => n + 1)
console.log(oldValue) // 5
console.log(MutableRef.get(counter)) // 6

// Double the value and get the previous one
const previous = MutableRef.getAndUpdate(counter, (n) => n * 2)
console.log(previous) // 6
console.log(MutableRef.get(counter)) // 12

// Transform string and get old value
const message = MutableRef.make("hello")
const oldMessage = MutableRef.getAndUpdate(message, (s) => s.toUpperCase())
console.log(oldMessage) // "hello"
console.log(MutableRef.get(message)) // "HELLO"

// Pipe-able version
const addOne = MutableRef.getAndUpdate((n: number) => n + 1)
const result = addOne(counter)
console.log(result) // Previous value before increment

// Useful for implementing atomic operations
const list = MutableRef.make<Array<number>>([1, 2, 3])
const oldList = MutableRef.getAndUpdate(list, (arr) => [...arr, 4])
console.log(oldList) // [1, 2, 3]
console.log(MutableRef.get(list)) // [1, 2, 3, 4]
```

**Signature**

```ts
declare const getAndUpdate: { <T>(f: (value: T) => T): (self: MutableRef<T>) => T; <T>(self: MutableRef<T>, f: (value: T) => T): T; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L422)

Since v2.0.0