# concatAll

Concatenates all of the streams in the chunk to one stream.

To import and use `concatAll` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.concatAll
```

**Signature**

```ts
export declare const concatAll: <A, E, R>(streams: Chunk.Chunk<Stream<A, E, R>>) => Stream<A, E, R>
```
