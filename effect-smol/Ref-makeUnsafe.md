Package: `effect`<br />
Module: `Ref`<br />

## Ref.makeUnsafe

Creates a new Ref with the specified initial value (unsafe version).

**When to use**

Use this when you need immediate synchronous construction and can guarantee
that creating the `Ref` outside of `Effect` is safe.

**Gotchas**

Prefer `Ref.make` for Effect-wrapped creation in Effect programs.

**Example** (Creating a ref unsafely)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L158)

Since v4.0.0