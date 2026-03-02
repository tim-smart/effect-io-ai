Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.compareAndSet

Atomically sets the value to newValue if the current value equals oldValue.
Returns true if the value was updated, false otherwise.
Uses Effect's Equal interface for value comparison.

**Example**

```ts
import { MutableRef } from "effect"

const ref = MutableRef.make("initial")

// Successful compare and set
const updated = MutableRef.compareAndSet(ref, "initial", "updated")
console.log(updated) // true
console.log(MutableRef.get(ref)) // "updated"

// Failed compare and set (value doesn't match)
const failed = MutableRef.compareAndSet(ref, "initial", "failed")
console.log(failed) // false
console.log(MutableRef.get(ref)) // "updated" (unchanged)

// Thread-safe counter increment
const counter = MutableRef.make(5)
let current: number
do {
  current = MutableRef.get(counter)
} while (!MutableRef.compareAndSet(counter, current, current + 1))

// Pipe-able version
const casUpdate = MutableRef.compareAndSet("updated", "final")
console.log(casUpdate(ref)) // true
```

**Signature**

```ts
declare const compareAndSet: { <T>(oldValue: T, newValue: T): (self: MutableRef<T>) => boolean; <T>(self: MutableRef<T>, oldValue: T, newValue: T): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L158)

Since v2.0.0