Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.get

Gets the resource for a key, acquiring it with the map's lookup function when
the key is not already cached.

**When to use**

Use to acquire or retain the resource for a key within the current scope.

**Details**

The resource's reference count is incremented for the current `Scope`, and a
release finalizer is added to that scope. When the current scope closes, the
reference is released; the resource is closed when the last reference is
released, subject to the map's idle time-to-live setting.

**Example** (Acquiring a resource)

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

  // Get a resource - it will be acquired on first access
  const resource = yield* RcMap.get(map, "database")
  console.log(resource) // "Resource: database"
}).pipe(Effect.scoped)
```

**See**

- `make` for creating the reference-counted map
- `invalidate` for removing a resource by key

**Signature**

```ts
declare const get: { <K>(key: K): <A, E>(self: RcMap<K, A, E>) => Effect.Effect<A, E, Scope.Scope>; <K, A, E>(self: RcMap<K, A, E>, key: K): Effect.Effect<A, E, Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RcMap.ts#L326)

Since v3.5.0