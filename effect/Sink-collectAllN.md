## collectAllN

A sink that collects first `n` elements into a chunk.

**Signature**

```ts
declare const collectAllN: <In>(n: number) => Sink<Chunk.Chunk<In>, In, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L137)

Since v2.0.0