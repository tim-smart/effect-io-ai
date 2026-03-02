Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.getAndSet

Sets the MutableRef to a new value and returns the previous value.

**Example**

```ts
import { MutableRef } from "effect"

const ref = MutableRef.make("old")

// Set new value and get the previous one
const previous = MutableRef.getAndSet(ref, "new")
console.log(previous) // "old"
console.log(MutableRef.get(ref)) // "new"

// Swapping values
const counter = MutableRef.make(5)
const oldValue = MutableRef.getAndSet(counter, 10)
console.log(`Changed from ${oldValue} to ${MutableRef.get(counter)}`) // "Changed from 5 to 10"

// Pipe-able version
const setValue = MutableRef.getAndSet("final")
const previousValue = setValue(ref)
console.log(previousValue) // "new"

// Useful for atomic swaps in algorithms
const buffer = MutableRef.make<Array<string>>(["a", "b", "c"])
const oldBuffer = MutableRef.getAndSet(buffer, [])
console.log(oldBuffer) // ["a", "b", "c"]
console.log(MutableRef.get(buffer)) // []
```

**Signature**

```ts
declare const getAndSet: { <T>(value: T): (self: MutableRef<T>) => T; <T>(self: MutableRef<T>, value: T): T; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L369)

Since v2.0.0