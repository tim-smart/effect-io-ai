Package: `effect`<br />
Module: `Schema`<br />

## Schema.suspend

Schema type wrapping a lazily-evaluated schema. Produced by `suspend`.

**Signature**

```ts
export interface suspend<S extends Top> extends
  Bottom<
    S["Type"],
    S["Encoded"],
    S["DecodingServices"],
    S["EncodingServices"],
    AST.Suspend,
    suspend<S>,
    S["~type.make.in"],
    S["Iso"],
    S["~type.parameters"],
    S["~type.make"],
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3629)

Since v4.0.0