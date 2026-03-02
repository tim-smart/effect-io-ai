Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.incrementAndGet

Increments a numeric MutableRef by 1 and returns the new value.

**Example**

```ts
import { MutableRef } from "effect"

const counter = MutableRef.make(5)

// Increment and get the new value
const newValue = MutableRef.incrementAndGet(counter)
console.log(newValue) // 6
console.log(MutableRef.get(counter)) // 6

// Use in expressions
const score = MutableRef.make(100)
console.log(`New score: ${MutableRef.incrementAndGet(score)}`) // "New score: 101"

// Pre-increment semantics (like ++i in other languages)
const level = MutableRef.make(0)
const nextLevel = MutableRef.incrementAndGet(level)
console.log(`Reached level ${nextLevel}`) // "Reached level 1"

// Conditional logic based on incremented value
const attempts = MutableRef.make(0)
if (MutableRef.incrementAndGet(attempts) > 3) {
  console.log("Too many attempts")
}
```

**Signature**

```ts
declare const incrementAndGet: (self: MutableRef<number>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L497)

Since v2.0.0