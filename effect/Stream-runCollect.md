Package: `effect`<br />
Module: `Stream`<br />

## Stream.runCollect

Runs the stream and collects all of its elements to a chunk.

**Signature**

```ts
declare const runCollect: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Chunk.Chunk<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4094)

Since v2.0.0