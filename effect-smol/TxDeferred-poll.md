Package: `effect`<br />
Module: `TxDeferred`<br />

## TxDeferred.poll

Reads the current state of the deferred without retrying. Returns `None` if
not yet completed.

**Example**

```ts
import { Effect, Option, Result, TxDeferred } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* TxDeferred.make<number>()
  const before = yield* TxDeferred.poll(deferred)
  console.log(Option.isNone(before)) // true

  yield* TxDeferred.succeed(deferred, 42)
  const after = yield* TxDeferred.poll(deferred)
  console.log(after) // Some(Success(42))
})
```

**Signature**

```ts
declare const poll: <A, E>(self: TxDeferred<A, E>) => Effect.Effect<Option<Result<A, E>>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxDeferred.ts#L161)

Since v4.0.0