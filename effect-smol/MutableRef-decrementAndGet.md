Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.decrementAndGet

Decrements a numeric MutableRef by 1 and returns the new value.

**Example**

```ts
import { MutableRef } from "effect"

const counter = MutableRef.make(5)

// Decrement and get the new value
const newValue = MutableRef.decrementAndGet(counter)
console.log(newValue) // 4
console.log(MutableRef.get(counter)) // 4

// Use in expressions
const lives = MutableRef.make(3)
console.log(`Lives remaining: ${MutableRef.decrementAndGet(lives)}`) // "Lives remaining: 2"

// Conditional logic based on decremented value
const attempts = MutableRef.make(3)
while (MutableRef.decrementAndGet(attempts) >= 0) {
  console.log("Retrying...")
  // retry logic
}
```

**Signature**

```ts
declare const decrementAndGet: (self: MutableRef<number>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L232)

Since v2.0.0