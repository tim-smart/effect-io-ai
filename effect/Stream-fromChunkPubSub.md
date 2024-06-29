# fromChunkPubSub

Creates a stream from a subscription to a `PubSub`.

To import and use `fromChunkPubSub` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromChunkPubSub
```

**Signature**

```ts
export declare const fromChunkPubSub: {
  <A>(
    pubsub: PubSub.PubSub<Chunk.Chunk<A>>,
    options: { readonly scoped: true; readonly shutdown?: boolean | undefined }
  ): Effect.Effect<Stream<A, never, never>, never, Scope.Scope>
  <A>(
    pubsub: PubSub.PubSub<Chunk.Chunk<A>>,
    options?: { readonly scoped?: false | undefined; readonly shutdown?: boolean | undefined } | undefined
  ): Stream<A, never, never>
}
```
