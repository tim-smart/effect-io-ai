Package: `effect`<br />
Module: `Schema`<br />

## Schema.toType

Schema type that collapses a transformation schema to its decoded `Type` on
both sides (Type = Encoded = S["Type"]). Produced by `toType`.

**Signature**

```ts
export interface toType<S extends Top> extends
  Bottom<
    S["Type"],
    S["Type"],
    never,
    never,
    S["ast"],
    toType<S>,
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1654)

Since v4.0.0