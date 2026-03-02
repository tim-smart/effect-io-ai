Package: `effect`<br />
Module: `TxDeferred`<br />

## TxDeferred.succeed

Completes the deferred with a success value. Returns `true` if this was the
first completion, `false` if already completed.

**Example**

```ts
import { Effect, TxDeferred } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* TxDeferred.make<number>()
  const first = yield* TxDeferred.succeed(deferred, 42)
  console.log(first) // true
  const second = yield* TxDeferred.succeed(deferred, 99)
  console.log(second) // false
})
```

**Signature**

```ts
declare const succeed: { <A>(value: A): <E>(self: TxDeferred<A, E>) => Effect.Effect<boolean, never, Effect.Transaction>; <A, E>(self: TxDeferred<A, E>, value: A): Effect.Effect<boolean, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxDeferred.ts#L218)

Since v4.0.0