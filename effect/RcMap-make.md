Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.make

An `RcMap` can contain multiple reference counted resources that can be indexed
by a key. The resources are lazily acquired on the first call to `get` and
released when the last reference is released.

Complex keys can extend `Equal` and `Hash` to allow lookups by value.

**Options**

- `capacity`: The maximum number of resources that can be held in the map.
- `idleTimeToLive`: When the reference count reaches zero, the resource will be released after this duration.

**Example**

```ts
import { Effect, RcMap } from "effect"

Effect.gen(function*() {
  const map = yield* RcMap.make({
    lookup: (key: string) =>
      Effect.acquireRelease(
        Effect.succeed(`acquired ${key}`),
        () => Effect.log(`releasing ${key}`)
      )
  })

  // Get "foo" from the map twice, which will only acquire it once.
  // It will then be released once the scope closes.
  yield* RcMap.get(map, "foo").pipe(
    Effect.andThen(RcMap.get(map, "foo")),
    Effect.scoped
  )
})
```

**Signature**

```ts
declare const make: { <K, A, E, R>(options: { readonly lookup: (key: K) => Effect.Effect<A, E, R>; readonly idleTimeToLive?: Duration.DurationInput | undefined; readonly capacity?: undefined; }): Effect.Effect<RcMap<K, A, E>, never, Scope.Scope | R>; <K, A, E, R>(options: { readonly lookup: (key: K) => Effect.Effect<A, E, R>; readonly idleTimeToLive?: Duration.DurationInput | undefined; readonly capacity: number; }): Effect.Effect<RcMap<K, A, E | Cause.ExceededCapacityException>, never, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RcMap.ts#L84)

Since v3.5.0