# leftover

Creates a sink that does not consume any input but provides the given chunk
as its leftovers

To import and use `leftover` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.leftover
```

**Signature**

```ts
export declare const leftover: <L>(chunk: Chunk.Chunk<L>) => Sink<never, never, unknown, L, void>
```
