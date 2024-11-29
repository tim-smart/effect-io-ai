# make

Create an `RcRef` from an acquire `Effect`.

An RcRef wraps a reference counted resource that can be acquired and released
multiple times.

The resource is lazily acquired on the first call to `get` and released when
the last reference is released.

To import and use `make` from the "RcRef" module:

ts
import \* as RcRef from "effect/RcRef"
// Can be accessed like this
RcRef.make
undefined

**Example**

```ts
import { Effect, RcRef } from "effect"

Effect.gen(function* () {
  const ref = yield* RcRef.make({
    acquire: Effect.acquireRelease(Effect.succeed("foo"), () => Effect.log("release foo"))
  })

  // will only acquire the resource once, and release it
  // when the scope is closed
  yield* RcRef.get(ref).pipe(Effect.andThen(RcRef.get(ref)), Effect.scoped)
})
```

**Signature**

```ts
export declare const make: <A, E, R>(options: {
  readonly acquire: Effect.Effect<A, E, R>
  readonly idleTimeToLive?: Duration.DurationInput | undefined
}) => Effect.Effect<RcRef<A, E>, never, R | Scope.Scope>
```
