Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.getAndDecrement

Decrements a numeric MutableRef by 1 and returns the previous value.

**Example**

```ts
import { MutableRef } from "effect"

const counter = MutableRef.make(5)

// Get current value and then decrement
const previousValue = MutableRef.getAndDecrement(counter)
console.log(previousValue) // 5
console.log(MutableRef.get(counter)) // 4

// Useful for processing where you need the original value
const itemsLeft = MutableRef.make(10)
while (MutableRef.get(itemsLeft) > 0) {
  const currentItem = MutableRef.getAndDecrement(itemsLeft)
  console.log(`Processing item ${currentItem}`)
}

// Post-decrement semantics (like i-- in other languages)
const index = MutableRef.make(3)
const currentIndex = MutableRef.getAndDecrement(index)
console.log(`Current: ${currentIndex}, Next: ${MutableRef.get(index)}`) // "Current: 3, Next: 2"
```

**Signature**

```ts
declare const getAndDecrement: (self: MutableRef<number>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L293)

Since v2.0.0