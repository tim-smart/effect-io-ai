Package: `effect`<br />
Module: `Schema`<br />

## Schema.Chunk

Type-level representation returned by `Chunk`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9461)

Since v3.10.0