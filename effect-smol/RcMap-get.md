Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.get

Retrieves a value from the RcMap by key. If the resource doesn't exist, it will be
acquired using the lookup function. The resource is reference counted and will be
released when the scope closes.

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

  // Get a resource - it will be acquired on first access
  const resource = yield* RcMap.get(map, "database")
  console.log(resource) // "Resource: database"
}).pipe(Effect.scoped)
```

**Signature**

```ts
declare const get: { <K>(key: K): <A, E>(self: RcMap<K, A, E>) => Effect.Effect<A, E, Scope.Scope>; <K, A, E>(self: RcMap<K, A, E>, key: K): Effect.Effect<A, E, Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcMap.ts#L331)

Since v3.5.0