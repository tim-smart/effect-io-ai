Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.every

Checks if all entries in the TxHashMap satisfy the given predicate.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a user permissions map
  const permissions = yield* TxHashMap.make(
    ["alice", { canRead: true, canWrite: true, canDelete: false }],
    ["bob", { canRead: true, canWrite: false, canDelete: false }],
    ["charlie", { canRead: true, canWrite: true, canDelete: true }]
  )

  // Check if all users can read
  const allCanRead = yield* TxHashMap.every(
    permissions,
    (perms) => perms.canRead
  )
  console.log(allCanRead) // true

  // Check if all users can write
  const allCanWrite = yield* TxHashMap.every(
    permissions,
    (perms) => perms.canWrite
  )
  console.log(allCanWrite) // false

  // Data-last usage with pipe
  const allHaveBasicAccess = yield* permissions.pipe(
    TxHashMap.every((perms, username) => perms.canRead && username.length > 2)
  )
  console.log(allHaveBasicAccess) // true
})
```

**Signature**

```ts
declare const every: { <K, V>(predicate: (value: V, key: K) => boolean): (self: TxHashMap<K, V>) => Effect.Effect<boolean>; <K, V>(self: TxHashMap<K, V>, predicate: (value: V, key: K) => boolean): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1783)

Since v2.0.0