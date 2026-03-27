Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.changesStream

Returns a Stream of all changes to the TxSubscriptionRef, starting with the
current value followed by every subsequent update.

**Example**

```ts
import { Effect, Stream, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make(0)
  yield* TxSubscriptionRef.set(ref, 1)
  yield* TxSubscriptionRef.set(ref, 2)

  const values = yield* Stream.runCollect(
    TxSubscriptionRef.changesStream(ref).pipe(Stream.take(1))
  )
  console.log(values) // [2]
})
```

**Signature**

```ts
declare const changesStream: <A>(self: TxSubscriptionRef<A>) => Stream.Stream<A, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L382)

Since v4.0.0