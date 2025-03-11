## forEachChunkWhile

A sink that executes the provided effectful function for every chunk fed to
it until `f` evaluates to `false`.

**Signature**

```ts
declare const forEachChunkWhile: <In, E, R>(f: (input: Chunk.Chunk<In>) => Effect.Effect<boolean, E, R>) => Sink<void, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L932)

Since v2.0.0