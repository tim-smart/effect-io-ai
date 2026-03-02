Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.make

Creates a new MutableRef with the specified initial value.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L116)

Since v2.0.0