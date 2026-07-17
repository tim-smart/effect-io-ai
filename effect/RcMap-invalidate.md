Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.invalidate

Invalidates and removes a specific key from the RcMap. If the resource is not
currently in use (reference count is 0), it will be immediately released.

**When to use**

Use to remove a resource by key so the next access performs a fresh lookup.

**Example** (Invalidating a resource)

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

**See**

- `get` for acquiring or retaining the resource for a key
- `touch` for extending the idle lifetime without removing the entry

**Signature**

```ts
declare const invalidate: { <K>(key: K): <A, E>(self: RcMap<K, A, E>) => Effect.Effect<void>; <K, A, E>(self: RcMap<K, A, E>, key: K): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RcMap.ts#L500)

Since v3.13.0