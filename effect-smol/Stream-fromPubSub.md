Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromPubSub

Creates a stream from a subscription to a `PubSub`.

**Example**

```ts
import { Console, Effect, Fiber, PubSub, Stream } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.unbounded<number>()

  const fiber = yield* Stream.fromPubSub(pubsub).pipe(
    Stream.take(3),
    Stream.runCollect,
    Effect.forkChild
  )

  yield* PubSub.publish(pubsub, 1)
  yield* PubSub.publish(pubsub, 2)
  yield* PubSub.publish(pubsub, 3)

  const values = yield* Fiber.join(fiber)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const fromPubSub: <A>(pubsub: PubSub.PubSub<A>) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1216)

Since v4.0.0