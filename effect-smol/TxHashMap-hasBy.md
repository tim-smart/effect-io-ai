Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.hasBy

Checks whether any entry in the TxHashMap matches the given predicate.

**Example** (Checking entries with a predicate)

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a user status map
  const currentTime = 1_700_000_000_000
  const userStatuses = yield* TxHashMap.make(
    ["alice", { status: "online", lastSeen: currentTime }],
    ["bob", { status: "offline", lastSeen: currentTime - 3_600_000 }],
    ["charlie", { status: "online", lastSeen: currentTime }]
  )

  // Check if any users are online
  const hasOnlineUsers = yield* TxHashMap.hasBy(
    userStatuses,
    (user) => user.status === "online"
  )
  console.log(hasOnlineUsers) // true

  // Check if any users have specific username pattern
  const hasAdminUser = yield* TxHashMap.hasBy(
    userStatuses,
    (user, username) => username.startsWith("admin")
  )
  console.log(hasAdminUser) // false

  // Data-last usage with pipe
  const hasRecentActivity = yield* userStatuses.pipe(
    TxHashMap.hasBy((user) => currentTime - user.lastSeen < 1_800_000) // 30 minutes
  )
  console.log(hasRecentActivity) // true
})
```

**Signature**

```ts
declare const hasBy: { <K, V>(predicate: (value: V, key: K) => boolean): (self: TxHashMap<K, V>) => Effect.Effect<boolean>; <K, V>(self: TxHashMap<K, V>, predicate: (value: V, key: K) => boolean): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1686)

Since v4.0.0