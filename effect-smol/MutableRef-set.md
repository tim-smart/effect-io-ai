Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.set

Sets the MutableRef to a new value and returns the reference.

**Example**

```ts
import { MutableRef } from "effect"

const ref = MutableRef.make("initial")

// Set a new value
MutableRef.set(ref, "updated")
console.log(MutableRef.get(ref)) // "updated"

// Chain set operations (since it returns the ref)
const result = MutableRef.set(ref, "final")
console.log(result === ref) // true (same reference)
console.log(MutableRef.get(ref)) // "final"

// Set complex objects
const config = MutableRef.make({ debug: false, verbose: false })
MutableRef.set(config, { debug: true, verbose: true })
console.log(MutableRef.get(config)) // { debug: true, verbose: true }

// Pipe-able version
const setValue = MutableRef.set("new value")
setValue(ref)
console.log(MutableRef.get(ref)) // "new value"

// Useful for state management
const state = MutableRef.make<"idle" | "loading" | "success" | "error">("idle")
MutableRef.set(state, "loading")
// ... perform async operation
MutableRef.set(state, "success")
```

**Signature**

```ts
declare const set: { <T>(value: T): (self: MutableRef<T>) => MutableRef<T>; <T>(self: MutableRef<T>, value: T): MutableRef<T>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L537)

Since v2.0.0