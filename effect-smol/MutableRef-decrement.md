Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.decrement

Decrements a numeric MutableRef by 1 and returns the reference.

**Example**

```ts
import { MutableRef } from "effect"

const counter = MutableRef.make(5)

// Decrement the counter
MutableRef.decrement(counter)
console.log(MutableRef.get(counter)) // 4

// Chain operations
MutableRef.decrement(counter)
MutableRef.decrement(counter)
console.log(MutableRef.get(counter)) // 2

// Useful for countdown scenarios
const countdown = MutableRef.make(10)
while (MutableRef.get(countdown) > 0) {
  console.log(MutableRef.get(countdown))
  MutableRef.decrement(countdown)
}
```

**Signature**

```ts
declare const decrement: (self: MutableRef<number>) => MutableRef<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L201)

Since v2.0.0