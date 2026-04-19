Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.KeyValueCombiner

Bidirectional merge strategy for index signature key-value pairs.

Used by `IndexSignature` when the same key appears multiple times
(e.g. from `Schema.extend` or overlapping records). Provides separate
`decode` and `encode` combiners that determine how duplicate entries are
merged.

**See**

- `IndexSignature`

**Signature**

```ts
declare class KeyValueCombiner { constructor(
    decode: Combiner.Combiner<readonly [key: PropertyKey, value: any]> | undefined,
    encode: Combiner.Combiner<readonly [key: PropertyKey, value: any]> | undefined
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1602)

Since v4.0.0