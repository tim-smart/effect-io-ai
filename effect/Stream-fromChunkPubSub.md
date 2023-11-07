# fromChunkPubSub

Creates a stream from a subscription to a `PubSub`.

To import and use `fromChunkPubSub` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.fromChunkPubSub
```

**Signature**

```ts
export declare const fromChunkPubSub: {
  <A>(
    pubsub: PubSub.PubSub<Chunk.Chunk<A>>,
    options: { readonly scoped: true; readonly shutdown?: boolean }
  ): Effect.Effect<Scope.Scope, never, Stream<never, never, A>>
  <A>(
    pubsub: PubSub.PubSub<Chunk.Chunk<A>>,
    options?: { readonly scoped?: false; readonly shutdown?: boolean }
  ): Stream<never, never, A>
}
```
