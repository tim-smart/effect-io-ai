Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.keys

Returns an iterable of all keys currently stored in the `RcMap`.

**When to use**

Use to inspect which keys currently have stored resources in an `RcMap`.

**Details**

If the `RcMap` has been closed, the effect is interrupted.

**Example** (Listing keys)

```ts
import { Effect, RcMap } from "effect"

Effect.gen(function*() {
  const map = yield* RcMap.make({
    lookup: (key: string) => Effect.succeed(`value-${key}`)
  })

  // Add some resources to the map
  yield* RcMap.get(map, "foo")
  yield* RcMap.get(map, "bar")
  yield* RcMap.get(map, "baz")

  // Get all keys currently in the map
  const allKeys = yield* RcMap.keys(map)
  console.log(allKeys) // ["foo", "bar", "baz"]
}).pipe(Effect.scoped)
```

**See**

- `has` for checking one key without enumerating all keys

**Signature**

```ts
declare const keys: <K, A, E>(self: RcMap<K, A, E>) => Effect.Effect<Iterable<K>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RcMap.ts#L454)

Since v3.8.0