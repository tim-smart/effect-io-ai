Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.invalidate

Invalidates and removes a specific key from the RcMap. If the resource is not
currently in use (reference count is 0), it will be immediately released.

**Example**

```ts
import { Effect, RcMap } from "effect"

Effect.gen(function*() {
  const map = yield* RcMap.make({
    lookup: (key: string) =>
      Effect.acquireRelease(
        Effect.succeed(`Resource: ${key}`),
        () => Effect.log(`Released ${key}`)
      )
  })

  // Get a resource
  yield* RcMap.get(map, "cache")

  // Invalidate the resource - it will be removed from the map
  // and released if no longer in use
  yield* RcMap.invalidate(map, "cache")

  // Next access will create a new resource
  yield* RcMap.get(map, "cache")
}).pipe(Effect.scoped)
```

**Signature**

```ts
declare const invalidate: { <K>(key: K): <A, E>(self: RcMap<K, A, E>) => Effect.Effect<void>; <K, A, E>(self: RcMap<K, A, E>, key: K): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L484)

Since v3.5.0