Package: `effect`<br />
Module: `TxRef`<br />

## TxRef.makeUnsafe

Synchronously creates a new `TxRef` with the specified initial value.

**When to use**

Prefer `make` in Effect code so allocation stays inside the Effect workflow.
Use `makeUnsafe` only when a `TxRef` must be constructed outside an effect.

**Example** (Creating transactional references unsafely)

```ts
import { TxRef } from "effect"

// Create a TxRef synchronously (unsafe - use make instead in Effect contexts)
const counter = TxRef.makeUnsafe(0)
const config = TxRef.makeUnsafe({ timeout: 5000, retries: 3 })

// These are now ready to use in transactions
console.log(counter.value) // 0
console.log(config.value) // { timeout: 5000, retries: 3 }
```

**Signature**

```ts
declare const makeUnsafe: <A>(initial: A) => TxRef<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxRef.ts#L114)

Since v4.0.0