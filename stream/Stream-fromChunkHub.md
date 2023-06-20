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
export declare const fromChunkHub: <A>(hub: Hub.Hub<Chunk.Chunk<A>>) => Stream<never, never, A>
```
