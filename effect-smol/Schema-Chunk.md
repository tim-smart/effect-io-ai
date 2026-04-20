Package: `effect`<br />
Module: `Schema`<br />

## Schema.Chunk

Schema for an Effect `Chunk` (immutable array-like collection) where values
must conform to the provided schema.

**Signature**

```ts
export interface Chunk<Value extends Top> extends
  declareConstructor<
    Chunk_.Chunk<Value["Type"]>,
    Chunk_.Chunk<Value["Encoded"]>,
    readonly [Value],
    ChunkIso<Value>
  >
{
  readonly "Rebuild": Chunk<Value>
  readonly value: Value
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8447)

Since v4.0.0