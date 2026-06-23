Package: `effect`<br />
Module: `Schema`<br />

## Schema.ChunkIso

Iso representation used for `Chunk` schemas: an array of element values using
the element schema's `Iso` type.

**When to use**

Use when annotating type-level helpers that work with the readonly-array ISO
shape of a `Chunk` schema.

**See**

- `Chunk` for the schema interface and constructor that use this ISO representation

**Signature**

```ts
type ChunkIso<Value> = ReadonlyArray<Value["Iso"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10108)

Since v4.0.0