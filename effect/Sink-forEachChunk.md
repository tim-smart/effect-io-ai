Package: `effect`<br />
Module: `Sink`<br />

## Sink.forEachChunk

A sink that executes the provided effectful function for every chunk fed to
it.

**Signature**

```ts
declare const forEachChunk: <In, X, E, R>(f: (input: Chunk.Chunk<In>) => Effect.Effect<X, E, R>) => Sink<void, In, never, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L921)

Since v2.0.0