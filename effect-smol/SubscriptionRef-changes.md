Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.changes

Creates a stream that emits the current value and all subsequent changes to
the `SubscriptionRef`.

The stream will first emit the current value, then emit all future changes
as they occur.

**Example**

```ts
import { Effect, Stream, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(0)

  const stream = SubscriptionRef.changes(ref)

  const fiber = yield* Stream.runForEach(
    stream,
    (value) => Effect.sync(() => console.log("Value:", value))
  ).pipe(Effect.forkScoped)

  yield* SubscriptionRef.set(ref, 1)
  yield* SubscriptionRef.set(ref, 2)
})
```

**Signature**

```ts
declare const changes: <A>(self: SubscriptionRef<A>) => Stream.Stream<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L109)

Since v2.0.0