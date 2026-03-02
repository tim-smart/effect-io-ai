Package: `effect`<br />
Module: `Stream`<br />

## Stream.toPubSubTake

Converts a stream to a PubSub for concurrent consumption.

`Take` values include the stream's end and failure signals.

**Example**

```ts
import { Console, Effect, PubSub, Stream } from "effect"

const program = Effect.gen(function* () {
  const pubsub = yield* Stream.fromArray([1, 2, 3]).pipe(
    Stream.toPubSubTake({ capacity: 8 })
  )
  const subscription = yield* PubSub.subscribe(pubsub)
  const take = yield* PubSub.take(subscription)

  if (Array.isArray(take)) {
    yield* Console.log(take)
  }
})
```

**Signature**

```ts
declare const toPubSubTake: { (options: { readonly capacity: "unbounded"; readonly replay?: number | undefined; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; readonly replay?: number | undefined; }): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<PubSub.PubSub<Take.Take<A, E>>, never, R | Scope.Scope>; <A, E, R>(self: Stream<A, E, R>, options: { readonly capacity: "unbounded"; readonly replay?: number | undefined; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; readonly replay?: number | undefined; }): Effect.Effect<PubSub.PubSub<Take.Take<A, E>>, never, R | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10613)

Since v4.0.0