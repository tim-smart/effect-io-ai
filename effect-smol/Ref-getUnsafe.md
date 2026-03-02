Package: `effect`<br />
Module: `Ref`<br />

## Ref.getUnsafe

Gets the current value of the Ref synchronously (unsafe version).

This function reads the current value without wrapping in Effect.
Use this only when you're sure about the safety of immediate access.

**Example**

```ts
import { Ref } from "effect"

// Create a ref directly
const counter = Ref.makeUnsafe(42)

// Get the value synchronously
const value = Ref.getUnsafe(counter)
console.log(value) // 42

// Note: This is unsafe and should be used carefully
// Prefer Ref.get for Effect-wrapped access
```

**Signature**

```ts
declare const getUnsafe: <A>(self: Ref<A>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L685)

Since v2.0.0