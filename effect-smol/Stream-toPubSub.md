Package: `effect`<br />
Module: `Stream`<br />

## Stream.toPubSub

Converts a stream to a PubSub for concurrent consumption.

`shutdownOnEnd` indicates whether the PubSub should be shut down when the
stream ends. By default this is `true`.

**Example**

```ts
import { Console, Effect, PubSub, Stream } from "effect"

const program = Effect.scoped(Effect.gen(function* () {
  const pubsub = yield* Stream.fromArray([1, 2]).pipe(
    Stream.toPubSub({ capacity: 8 })
  )
  const subscription = yield* PubSub.subscribe(pubsub)
  const first = yield* PubSub.take(subscription)

  yield* Console.log(first)
}))
```

**Signature**

```ts
declare const toPubSub: { (options: { readonly capacity: "unbounded"; readonly replay?: number | undefined; readonly shutdownOnEnd?: boolean | undefined; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; readonly replay?: number | undefined; readonly shutdownOnEnd?: boolean | undefined; }): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<PubSub.PubSub<A>, never, R | Scope.Scope>; <A, E, R>(self: Stream<A, E, R>, options: { readonly capacity: "unbounded"; readonly replay?: number | undefined; readonly shutdownOnEnd?: boolean | undefined; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; readonly replay?: number | undefined; readonly shutdownOnEnd?: boolean | undefined; }): Effect.Effect<PubSub.PubSub<A>, never, R | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10640)

Since v2.0.0