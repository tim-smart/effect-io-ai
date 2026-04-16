Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.complete

Completes the deferred with the result of the specified effect. If the
deferred has already been completed, the method will produce false.

Note that `Deferred.completeWith` will be much faster, so consider using
that if you do not need to memoize the result of the specified effect.

**Example**

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  const completed = yield* Deferred.complete(deferred, Effect.succeed(42))
  console.log(completed) // true

  const value = yield* Deferred.await(deferred)
  console.log(value) // 42
})
```

**Signature**

```ts
declare const complete: { <A, E, R>(effect: Effect<A, E, R>): (self: Deferred<A, E>) => Effect<boolean, never, R>; <A, E, R>(self: Deferred<A, E>, effect: Effect<A, E, R>): Effect<boolean, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L266)

Since v2.0.0