Package: `effect`<br />
Module: `MutableRef`<br />

## MutableRef.get

Gets the current value of the MutableRef.

**Example**

```ts
import { MutableRef } from "effect"

const ref = MutableRef.make("hello")
console.log(MutableRef.get(ref)) // "hello"

MutableRef.set(ref, "world")
console.log(MutableRef.get(ref)) // "world"

// Reading complex objects
const config = MutableRef.make({ port: 3000, host: "localhost" })
const currentConfig = MutableRef.get(config)
console.log(currentConfig.port) // 3000

// Multiple reads return the same value
const value1 = MutableRef.get(ref)
const value2 = MutableRef.get(ref)
console.log(value1 === value2) // true
```

**Signature**

```ts
declare const get: <T>(self: MutableRef<T>) => T
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableRef.ts#L261)

Since v2.0.0