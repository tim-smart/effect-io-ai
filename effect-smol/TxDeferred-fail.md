Package: `effect`<br />
Module: `TxDeferred`<br />

## TxDeferred.fail

Completes the deferred with a failure. Returns `true` if this was the first
completion, `false` if already completed.

**Example**

```ts
import { Effect, TxDeferred } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* TxDeferred.make<number, string>()
  const first = yield* TxDeferred.fail(deferred, "boom")
  console.log(first) // true
  const second = yield* TxDeferred.fail(deferred, "boom2")
  console.log(second) // false
})
```

**Signature**

```ts
declare const fail: { <E>(error: E): <A>(self: TxDeferred<A, E>) => Effect.Effect<boolean, never, Effect.Transaction>; <A, E>(self: TxDeferred<A, E>, error: E): Effect.Effect<boolean, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxDeferred.ts#L247)

Since v4.0.0