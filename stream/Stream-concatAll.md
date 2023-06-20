# concatAll

Concatenates all of the streams in the chunk to one stream.

To import and use `concatAll` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.concatAll
```

**Signature**

```ts
export declare const concatAll: <R, E, A>(streams: Chunk.Chunk<Stream<R, E, A>>) => Stream<R, E, A>
```
