# fromChunkHub

Creates a stream from a subscription to a `Hub`.

To import and use `fromChunkHub` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.fromChunkHub
```

**Signature**

```ts
export declare const fromChunkHub: {
  <A>(hub: Hub.Hub<Chunk.Chunk<A>>, options: { readonly scoped: true; readonly shutdown?: boolean }): Effect.Effect<
    Scope.Scope,
    never,
    Stream<never, never, A>
  >
  <A>(hub: Hub.Hub<Chunk.Chunk<A>>, options?: { readonly scoped?: false; readonly shutdown?: boolean }): Stream<
    never,
    never,
    A
  >
}
```
