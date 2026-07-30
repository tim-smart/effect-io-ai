Package: `effect`<br />
Module: `Differ`<br />

## Differ.chunk

Constructs a differ that knows how to diff a `Chunk` of values given a
differ that knows how to diff the values.

**Signature**

```ts
declare const chunk: <Value, Patch>(differ: Differ<Value, Patch>) => Differ<Chunk<Value>, Differ.Chunk.Patch<Value, Patch>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Differ.ts#L334)

Since v2.0.0