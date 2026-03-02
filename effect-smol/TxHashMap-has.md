Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.has

Checks if the specified key exists in the TxHashMap.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const permissions = yield* TxHashMap.make(
    ["alice", ["read", "write"]],
    ["bob", ["read"]],
    ["charlie", ["admin"]]
  )

  // Check if users exist
  const hasAlice = yield* TxHashMap.has(permissions, "alice")
  console.log(hasAlice) // true

  const hasDavid = yield* TxHashMap.has(permissions, "david")
  console.log(hasDavid) // false

  // Use direct method call for type-safe access
  const hasBob = yield* TxHashMap.has(permissions, "bob")
  console.log(hasBob) // true
})
```

**Signature**

```ts
declare const has: { <K1 extends K, K>(key: K1): <V>(self: TxHashMap<K, V>) => Effect.Effect<boolean, never, Effect.Transaction>; <K1 extends K, K, V>(self: TxHashMap<K, V>, key: K1): Effect.Effect<boolean, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L445)

Since v2.0.0