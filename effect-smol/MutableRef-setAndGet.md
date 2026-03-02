Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.setAndGet

Sets the MutableRef to a new value and returns the new value.

**Example**

```ts
import { MutableRef } from "effect"

const ref = MutableRef.make("old")

// Set and get the new value
const newValue = MutableRef.setAndGet(ref, "new")
console.log(newValue) // "new"
console.log(MutableRef.get(ref)) // "new"

// Useful for assignments that need the value
const counter = MutableRef.make(0)
const currentValue = MutableRef.setAndGet(counter, 42)
console.log(`Counter set to: ${currentValue}`) // "Counter set to: 42"

// Pipe-able version
const setValue = MutableRef.setAndGet("final")
const result = setValue(ref)
console.log(result) // "final"

// Difference from set: returns value instead of reference
const ref1 = MutableRef.make(1)
const returnedRef = MutableRef.set(ref1, 2) // Returns MutableRef
const returnedValue = MutableRef.setAndGet(ref1, 3) // Returns value
console.log(returnedValue) // 3
```

**Signature**

```ts
declare const setAndGet: { <T>(value: T): (self: MutableRef<T>) => T; <T>(self: MutableRef<T>, value: T): T; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L582)

Since v2.0.0