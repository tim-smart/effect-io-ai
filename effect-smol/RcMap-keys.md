Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.keys

Returns an array of all keys currently stored in the RcMap.

**Example**

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

**Signature**

```ts
declare const keys: <K, A, E>(self: RcMap<K, A, E>) => Effect.Effect<Iterable<K>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L447)

Since v3.5.0