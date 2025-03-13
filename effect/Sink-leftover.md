Package: `effect`<br />
Module: `Sink`<br />

## Sink.leftover

Creates a sink that does not consume any input but provides the given chunk
as its leftovers

**Signature**

```ts
declare const leftover: <L>(chunk: Chunk.Chunk<L>) => Sink<void, unknown, L>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1073)

Since v2.0.0