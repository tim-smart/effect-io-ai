Package: `effect`<br />
Module: `Stream`<br />

## Stream.accumulate

Collects each underlying Chunk of the stream into a new chunk, and emits it
on each pull.

**Signature**

```ts
declare const accumulate: <A, E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L181)

Since v2.0.0