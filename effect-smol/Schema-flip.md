Package: `effect`<br />
Module: `Schema`<br />

## Schema.flip

Schema type representing a flipped schema where `Type` and `Encoded` are
swapped. Produced by `flip`.

**Signature**

```ts
export interface flip<S extends Top> extends
  Bottom<
    S["Encoded"],
    S["Type"],
    S["EncodingServices"],
    S["DecodingServices"],
    AST.AST,
    flip<S>,
    S["Encoded"],
    S["Encoded"],
    ReadonlyArray<Top>,
    S["Encoded"],
    S["~encoded.mutability"],
    S["~encoded.optionality"],
    ConstructorDefault,
    S["~type.mutability"],
    S["~type.optionality"]
  >
{
  readonly [FlipTypeId]: typeof FlipTypeId
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1734)

Since v4.0.0