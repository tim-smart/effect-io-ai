Package: `effect`<br />
Module: `TxDeferred`<br />

## TxDeferred.make

Creates a new empty `TxDeferred`.

**Example**

```ts
import { Effect, Option, TxDeferred } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* TxDeferred.make<string, Error>()
  const state = yield* TxDeferred.poll(deferred)
  console.log(Option.isNone(state)) // true
})
```

**Signature**

```ts
declare const make: <A, E = never>() => Effect.Effect<TxDeferred<A, E>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxDeferred.ts#L96)

Since v4.0.0