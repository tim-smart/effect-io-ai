Package: `effect`<br />
Module: `Schema`<br />

## Schema.Chunk

Type-level representation returned by `Chunk`.

**Signature**

```ts
export interface Chunk<Value extends Constraint> extends
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L10158)

Since v3.10.0