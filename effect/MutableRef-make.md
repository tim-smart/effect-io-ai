Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.make

Creates a new MutableRef with the specified initial value.

**When to use**

Use to create a synchronous `MutableRef` initialized with a value.

**Example** (Creating mutable refs)

```ts
import { MutableRef } from "effect"

// Create a counter reference
const counter = MutableRef.make(0)
console.log(MutableRef.get(counter)) // 0

// Create a configuration reference
const config = MutableRef.make({ debug: false, timeout: 5000 })
console.log(MutableRef.get(config)) // { debug: false, timeout: 5000 }

// Create a string reference
const status = MutableRef.make("idle")
MutableRef.set(status, "running")
console.log(MutableRef.get(status)) // "running"
```

**Signature**

```ts
declare const make: <T>(value: T) => MutableRef<T>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableRef.ts#L113)

Since v2.0.0