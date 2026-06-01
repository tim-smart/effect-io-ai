Package: `effect`<br />
Module: `Ref`<br />

## Ref.getUnsafe

Gets the current value of the Ref synchronously (unsafe version).

**When to use**

Use when you need immediate synchronous access and can guarantee that
reading the `Ref` outside of `Effect` is safe.

**Gotchas**

Prefer `Ref.get` for Effect-wrapped access in Effect programs.

**Example** (Reading a ref unsafely)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L842)

Since v4.0.0