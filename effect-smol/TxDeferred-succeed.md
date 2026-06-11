Package: `effect`<br />
Module: `TxDeferred`<br />

## TxDeferred.succeed

Completes the deferred with a success value. Returns `true` if this was the
first completion, `false` if already completed.

**When to use**

Use to complete a `TxDeferred` with a successful value.

**Example** (Completing with a success value)

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
declare const succeed: { <A>(value: A): <E>(self: TxDeferred<A, E>) => Effect.Effect<boolean>; <A, E>(self: TxDeferred<A, E>, value: A): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxDeferred.ts#L256)

Since v2.0.0