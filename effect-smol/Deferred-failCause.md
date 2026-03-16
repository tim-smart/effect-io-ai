Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.failCause

Fails the `Deferred` with the specified `Cause`, which will be propagated to
all fibers waiting on the value of the `Deferred`.

**Example**

```ts
import { Cause, Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number, string>()
  const success = yield* Deferred.failCause(
    deferred,
    Cause.fail("Operation failed")
  )
  console.log(success) // true
})
```

**Signature**

```ts
declare const failCause: { <E>(cause: Cause.Cause<E>): <A>(self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, cause: Cause.Cause<E>): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L394)

Since v2.0.0