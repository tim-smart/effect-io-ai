Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.hasHash

Checks if the specified key has an entry in the TxHashMap using a custom hash.
This can provide performance benefits when the hash is precomputed.

**Example**

```ts
import { Effect, Hash, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create an access control map
  const permissions = yield* TxHashMap.make(
    ["admin", { read: true, write: true, delete: true }],
    ["user", { read: true, write: false, delete: false }]
  )

  // When checking permissions frequently with same roles
  const role = "admin"
  const roleHash = Hash.string(role)

  // Use hash-optimized existence check
  const hasAdminRole = yield* TxHashMap.hasHash(permissions, role, roleHash)
  console.log(hasAdminRole) // true

  // Check non-existent role
  const hasGuestRole = yield* TxHashMap.hasHash(
    permissions,
    "guest",
    Hash.string("guest")
  )
  console.log(hasGuestRole) // false

  // Useful in hot paths where hash is computed once and reused
  const roles = ["admin", "user", "moderator"]
  const roleHashes = roles.map((role) => [role, Hash.string(role)] as const)

  for (const [role, hash] of roleHashes) {
    const exists = yield* TxHashMap.hasHash(permissions, role, hash)
    console.log(`Role ${role}: ${exists}`)
  }
})
```

**Signature**

```ts
declare const hasHash: { <K1 extends K, K>(key: K1, hash: number): <V>(self: TxHashMap<K, V>) => Effect.Effect<boolean, never, Effect.Transaction>; <K1 extends K, K, V>(self: TxHashMap<K, V>, key: K1, hash: number): Effect.Effect<boolean, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1266)

Since v2.0.0