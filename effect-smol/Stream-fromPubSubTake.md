Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromPubSubTake

Creates a stream from a PubSub of `Take` values.

`Take` values include end and failure signals.

**Example**

```ts
import { Console, Effect, Exit, PubSub, Stream, Take } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.unbounded<Take.Take<number, string>>({
    replay: 3
  })

  yield* PubSub.publish(pubsub, [1])
  yield* PubSub.publish(pubsub, [2])
  yield* PubSub.publish(pubsub, Exit.succeed<void>(undefined))

  const values = yield* Stream.fromPubSubTake(pubsub).pipe(Stream.runCollect)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2 ]
```

**Signature**

```ts
declare const fromPubSubTake: <A, E>(pubsub: PubSub.PubSub<Take.Take<A, E>>) => Stream<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1247)

Since v4.0.0