Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.succeed

Attempts to complete the `Deferred` with the specified value.

**When to use**

Use to complete a `Deferred` with a successful value.

**Details**

Fibers waiting on the `Deferred` receive the value only if this call
completes it. The returned effect succeeds with `true` when this call
completed the `Deferred`, or `false` if it was already completed.

**Example** (Completing a Deferred with a value)

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  yield* Deferred.succeed(deferred, 42)

  const value = yield* Deferred.await(deferred)
  console.log(value) // 42
})
```

**Signature**

```ts
declare const succeed: { <A>(value: A): <E>(self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, value: A): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L772)

Since v2.0.0