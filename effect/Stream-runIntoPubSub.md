## runIntoPubSub

Publishes elements of this stream to a `PubSub`. Stream failure and ending will
also be signalled.

**Signature**

```ts
declare const runIntoPubSub: { <A, E>(pubsub: PubSub.PubSub<Take.Take<A, E>>): <R>(self: Stream<A, E, R>) => Effect.Effect<void, never, R>; <A, E, R>(self: Stream<A, E, R>, pubsub: PubSub.PubSub<Take.Take<A, E>>): Effect.Effect<void, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4368)

Since v2.0.0