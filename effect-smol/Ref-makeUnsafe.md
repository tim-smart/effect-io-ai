Package: `effect`<br />
Module: `Ref`<br />

## Ref.makeUnsafe

Creates a new Ref with the specified initial value (unsafe version).

This function creates a Ref synchronously without wrapping in Effect.
Use this only when you're sure about the safety of immediate creation.

**Example**

```ts
import { Ref } from "effect"

// Create a ref directly without Effect
const counter = Ref.makeUnsafe(0)

// Get the current value
const value = Ref.getUnsafe(counter)
console.log(value) // 0

// Note: This is unsafe and should be used carefully
// Prefer Ref.make for Effect-wrapped creation
```

**Signature**

```ts
declare const makeUnsafe: <A>(value: A) => Ref<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L148)

Since v4.0.0