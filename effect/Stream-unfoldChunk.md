Package: `effect`<br />
Module: `Stream`<br />

## Stream.unfoldChunk

Creates a stream by peeling off the "layers" of a value of type `S`.

**Signature**

```ts
declare const unfoldChunk: <S, A>(s: S, f: (s: S) => Option.Option<readonly [Chunk.Chunk<A>, S]>) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5421)

Since v2.0.0