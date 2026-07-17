Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.changes

Creates a stream that emits the current value and all subsequent changes to
the `SubscriptionRef`.

**Details**

The stream will first emit the current value, then emit all future changes
as they occur.

**Example** (Streaming changes)

```ts
import { Deferred, Effect, Fiber, Stream, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(0)
  const ready = yield* Deferred.make<void>()

  const fiber = yield* SubscriptionRef.changes(ref).pipe(
    Stream.tap(() => Deferred.succeed(ready, void 0)),
    Stream.take(3),
    Stream.runCollect,
    Effect.forkChild
  )

  yield* Deferred.await(ready)
  yield* SubscriptionRef.set(ref, 1)
  yield* SubscriptionRef.set(ref, 2)

  const values = yield* Fiber.join(fiber)
  console.log(values) // [ 0, 1, 2 ]
})

Effect.runPromise(program)
```

**Signature**

```ts
declare const changes: <A>(self: SubscriptionRef<A>) => Stream.Stream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SubscriptionRef.ts#L160)

Since v4.0.0