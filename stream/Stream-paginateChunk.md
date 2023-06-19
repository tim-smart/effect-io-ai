# paginateChunk

Like `Stream.unfoldChunk`, but allows the emission of values to end one step
further than the unfolding of the state. This is useful for embedding
paginated APIs, hence the name.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const paginateChunk: <S, A>(
  s: S,
  f: (s: S) => readonly [Chunk.Chunk<A>, Option.Option<S>]
) => Stream<never, never, A>
```
