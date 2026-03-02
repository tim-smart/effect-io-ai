Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.increment

Increments a numeric MutableRef by 1 and returns the reference.

**Example**

```ts
import { MutableRef } from "effect"

const counter = MutableRef.make(5)

// Increment the counter
MutableRef.increment(counter)
console.log(MutableRef.get(counter)) // 6

// Chain operations
MutableRef.increment(counter)
MutableRef.increment(counter)
console.log(MutableRef.get(counter)) // 8

// Useful for simple counting
const visits = MutableRef.make(0)
MutableRef.increment(visits) // User visited
MutableRef.increment(visits) // Another visit
console.log(MutableRef.get(visits)) // 2

// Returns the reference for chaining
const result = MutableRef.increment(counter)
console.log(result === counter) // true
```

**Signature**

```ts
declare const increment: (self: MutableRef<number>) => MutableRef<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L462)

Since v2.0.0