Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.MutableRef

A synchronous mutable reference that stores a current value.

**Details**

Read or write the value directly through `.current`, or use the `MutableRef`
helpers for pipeable updates such as `get`, `set`, `update`, and
`compareAndSet`. All operations mutate the same reference in place.

**Example** (Creating and updating refs)

```ts
import { MutableRef } from "effect"

// Create a mutable reference
const ref: MutableRef.MutableRef<number> = MutableRef.make(42)

// Read the current value
console.log(ref.current) // 42
console.log(MutableRef.get(ref)) // 42

// Update the value
ref.current = 100
console.log(MutableRef.get(ref)) // 100

// Use with complex types
interface Config {
  timeout: number
  retries: number
}

const config: MutableRef.MutableRef<Config> = MutableRef.make({
  timeout: 5000,
  retries: 3
})

// Update through the interface
config.current = { timeout: 10000, retries: 5 }
console.log(config.current.timeout) // 10000
```

**Signature**

```ts
export interface MutableRef<out T> extends Pipeable, Inspectable {
  readonly [TypeId]: typeof TypeId
  current: T
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L87)

Since v2.0.0