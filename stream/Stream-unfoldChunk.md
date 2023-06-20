# unfoldChunk

Creates a stream by peeling off the "layers" of a value of type `S`.

To import and use `unfoldChunk` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.unfoldChunk
```

**Signature**

```ts
export declare const unfoldChunk: <S, A>(
  s: S,
  f: (s: S) => Option.Option<readonly [Chunk.Chunk<A>, S]>
) => Stream<never, never, A>
```
