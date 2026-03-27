Package: `effect`<br />
Module: `TxDeferred`<br />

## TxDeferred.done

Completes the deferred with a `Result`. Returns `true` if this was the first
completion, `false` if already completed.

**Example**

```ts
import { Effect, Result, TxDeferred } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* TxDeferred.make<number, string>()
  const first = yield* TxDeferred.done(deferred, Result.succeed(42))
  console.log(first) // true
  const second = yield* TxDeferred.done(deferred, Result.succeed(99))
  console.log(second) // false
})
```

**Signature**

```ts
declare const done: { <A, E>(result: Result<A, E>): (self: TxDeferred<A, E>) => Effect.Effect<boolean>; <A, E>(self: TxDeferred<A, E>, result: Result<A, E>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxDeferred.ts#L184)

Since v4.0.0