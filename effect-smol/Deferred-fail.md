Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.fail

Attempts to complete the `Deferred` with the specified error.

**When to use**

Use to complete a `Deferred` with a typed failure value.

**Details**

Fibers waiting on the `Deferred` fail with that error only if this call
completes it. The returned effect succeeds with `true` when this call
completed the `Deferred`, or `false` if it was already completed.

**Example** (Failing a Deferred with an error)

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number, string>()
  const success = yield* Deferred.fail(deferred, "Operation failed")
  console.log(success) // true
})
```

**Signature**

```ts
declare const fail: { <E>(error: E): <A>(self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, error: E): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L445)

Since v2.0.0