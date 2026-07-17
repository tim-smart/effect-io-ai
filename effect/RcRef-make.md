Package: `effect`<br />
Module: `RcRef`<br />

## RcRef.make

Creates an `RcRef` from an acquire effect.

**When to use**

Use to create a lazily acquired, reference-counted resource from an acquire
effect.

**Details**

The resource is acquired lazily on the first `get` and shared by subsequent
gets while it remains cached. Each `get` adds a reference to the current
`Scope`. When the last reference is released, the resource is closed
immediately by default, or after `idleTimeToLive` when that option is
provided.

**Example** (Creating a reference-counted resource)

```ts
import { Effect, RcRef } from "effect"

Effect.gen(function*() {
  const ref = yield* RcRef.make({
    acquire: Effect.acquireRelease(
      Effect.succeed("foo"),
      () => Effect.log("release foo")
    )
  })

  // will only acquire the resource once, and release it
  // when the scope is closed
  yield* RcRef.get(ref).pipe(
    Effect.andThen(RcRef.get(ref)),
    Effect.scoped
  )
})
```

**Signature**

```ts
declare const make: <A, E, R>(options: { readonly acquire: Effect.Effect<A, E, R>; readonly idleTimeToLive?: Duration.Input | undefined; }) => Effect.Effect<RcRef<A, E>, never, R | Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RcRef.ts#L147)

Since v3.5.0