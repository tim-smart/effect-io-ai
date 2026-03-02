Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.updateAndGet

Updates the MutableRef with the result of applying a function to its current value,
and returns the new value.

**Example**

```ts
import { MutableRef } from "effect"

const counter = MutableRef.make(5)

// Increment and get the new value
const newValue = MutableRef.updateAndGet(counter, (n) => n + 1)
console.log(newValue) // 6
console.log(MutableRef.get(counter)) // 6

// Double the value and get the result
const doubled = MutableRef.updateAndGet(counter, (n) => n * 2)
console.log(doubled) // 12

// Transform string and get result
const message = MutableRef.make("hello")
const upperCase = MutableRef.updateAndGet(message, (s) => s.toUpperCase())
console.log(upperCase) // "HELLO"

// Pipe-able version
const increment = MutableRef.updateAndGet((n: number) => n + 1)
const result = increment(counter)
console.log(result) // 13 (new value)

// Useful for calculations that need the result
const score = MutableRef.make(100)
const bonus = 50
const newScore = MutableRef.updateAndGet(score, (s) => s + bonus)
console.log(`New score: ${newScore}`) // "New score: 150"

// Array transformations
const list = MutableRef.make<Array<number>>([1, 2, 3])
const newList = MutableRef.updateAndGet(list, (arr) => arr.map((x) => x * 2))
console.log(newList) // [2, 4, 6]
console.log(MutableRef.get(list)) // [2, 4, 6]
```

**Signature**

```ts
declare const updateAndGet: { <T>(f: (value: T) => T): (self: MutableRef<T>) => T; <T>(self: MutableRef<T>, f: (value: T) => T): T; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L689)

Since v2.0.0