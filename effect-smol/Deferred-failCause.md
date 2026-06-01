Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.failCause

Attempts to complete the `Deferred` with the specified `Cause`.

**When to use**

Use to complete a `Deferred` with a full failure cause.

**Details**

Fibers waiting on the `Deferred` observe that cause only if this call
completes it. The returned effect succeeds with `true` when this call
completed the `Deferred`, or `false` if it was already completed.

**Example** (Failing a Deferred with a Cause)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L520)

Since v2.0.0