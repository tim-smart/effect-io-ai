Package: `effect`<br />
Module: `Stream`<br />

## Stream.paginateChunk

Like `Stream.unfoldChunk`, but allows the emission of values to end one step
further than the unfolding of the state. This is useful for embedding
paginated APIs, hence the name.

**Signature**

```ts
declare const paginateChunk: <S, A>(s: S, f: (s: S) => readonly [Chunk.Chunk<A>, Option.Option<S>]) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3390)

Since v2.0.0