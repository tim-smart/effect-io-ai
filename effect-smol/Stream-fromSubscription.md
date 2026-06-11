Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromSubscription

Creates a stream from a PubSub subscription.

**When to use**

Use when you already have a `PubSub.Subscription` and want to expose its
messages as a `Stream`, with `Stream.take` or cancellation controlling how
many values are consumed.

**Example** (Creating a stream from a PubSub subscription)

```ts
import { Console, Effect, PubSub, Stream } from "effect"

const program = Effect.scoped(Effect.gen(function*() {
  const pubsub = yield* PubSub.unbounded<number>()
  const subscription = yield* PubSub.subscribe(pubsub)

  yield* PubSub.publish(pubsub, 1)
  yield* PubSub.publish(pubsub, 2)

  const stream = Stream.fromSubscription(subscription)
  const values = yield* stream.pipe(Stream.take(2), Stream.runCollect)
  yield* Console.log(values)
}))

Effect.runPromise(program)
// Output: [ 1, 2 ]
```

**Signature**

```ts
declare const fromSubscription: <A>(pubsub: PubSub.Subscription<A>) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1529)

Since v4.0.0