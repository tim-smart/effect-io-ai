Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.getAndIncrement

Increments a numeric MutableRef by 1 and returns the previous value.

**Example**

```ts
import { MutableRef } from "effect"

const counter = MutableRef.make(5)

// Get current value and then increment
const previousValue = MutableRef.getAndIncrement(counter)
console.log(previousValue) // 5
console.log(MutableRef.get(counter)) // 6

// Useful for ID generation
const idGenerator = MutableRef.make(0)
const getId = () => MutableRef.getAndIncrement(idGenerator)

console.log(getId()) // 0
console.log(getId()) // 1
console.log(getId()) // 2

// Post-increment semantics (like i++ in other languages)
const position = MutableRef.make(0)
const currentPos = MutableRef.getAndIncrement(position)
console.log(`Was at: ${currentPos}, Now at: ${MutableRef.get(position)}`) // "Was at: 0, Now at: 1"

// Useful for iteration counters
const iterations = MutableRef.make(0)
while (MutableRef.get(iterations) < 5) {
  const iteration = MutableRef.getAndIncrement(iterations)
  console.log(`Iteration ${iteration}`)
}
```

**Signature**

```ts
declare const getAndIncrement: (self: MutableRef<number>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L333)

Since v2.0.0