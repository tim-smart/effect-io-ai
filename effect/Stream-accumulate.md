# accumulate

Collects each underlying Chunk of the stream into a new chunk, and emits it
on each pull.

To import and use `accumulate` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.accumulate
```

**Signature**

```ts
export declare const accumulate: <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, Chunk.Chunk<A>>
```
