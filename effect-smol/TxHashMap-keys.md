Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.keys

Returns an array of all keys in the TxHashMap.

**Example**

```ts
import { Effect, Option, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const userRoles = yield* TxHashMap.make(
    ["alice", "admin"],
    ["bob", "user"],
    ["charlie", "moderator"]
  )

  const usernames = yield* TxHashMap.keys(userRoles)
  console.log(usernames.sort()) // ["alice", "bob", "charlie"]

  // Useful for iteration
  for (const username of usernames) {
    const role = yield* TxHashMap.get(userRoles, username)
    if (role._tag === "Some") {
      console.log(`${username}: ${role.value}`)
    }
  }
})
```

**Signature**

```ts
declare const keys: <K, V>(self: TxHashMap<K, V>) => Effect.Effect<Array<K>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L824)

Since v2.0.0