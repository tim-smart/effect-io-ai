Package: `effect`<br />
Module: `TxDeferred`<br />

## TxDeferred.isTxDeferred

Determines if the provided value is a `TxDeferred`.

**Example**

```ts
import { Effect, TxDeferred } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* TxDeferred.make<number>()
  console.log(TxDeferred.isTxDeferred(deferred)) // true
  console.log(TxDeferred.isTxDeferred("not a deferred")) // false
})
```

**Signature**

```ts
declare const isTxDeferred: (u: unknown) => u is TxDeferred<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxDeferred.ts#L273)

Since v4.0.0