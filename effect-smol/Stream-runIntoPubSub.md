Package: `effect`<br />
Module: `Stream`<br />

## Stream.runIntoPubSub

Runs the stream, publishing elements into the provided PubSub.

`shutdownOnEnd` controls whether the PubSub is shut down when the stream ends.
It only shuts down when set to `true`.

**Example**

```ts
import { Console, Effect, PubSub, Stream } from "effect"

const program = Effect.scoped(Effect.gen(function* () {
  const pubsub = yield* PubSub.unbounded<number>()
  const subscription = yield* PubSub.subscribe(pubsub)

  yield* Stream.runIntoPubSub(Stream.fromIterable([1, 2]), pubsub)

  const first = yield* PubSub.take(subscription)
  const second = yield* PubSub.take(subscription)

  yield* Console.log(first)
  yield* Console.log(second)
}))

Effect.runPromise(program)
//=> 1
//=> 2
```

**Signature**

```ts
declare const runIntoPubSub: { <A>(pubsub: PubSub.PubSub<A>, options?: { readonly shutdownOnEnd?: boolean | undefined; } | undefined): <E, R>(self: Stream<A, E, R>) => Effect.Effect<void, E, R>; <A, E, R>(self: Stream<A, E, R>, pubsub: PubSub.PubSub<A>, options?: { readonly shutdownOnEnd?: boolean | undefined; } | undefined): Effect.Effect<void, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10594)

Since v2.0.0