Package: `effect`<br />
Module: `Schema`<br />

## Schema.toEncoded

Schema type that collapses a transformation schema to its `Encoded` side on
both sides (Type = Encoded = S["Encoded"]). Produced by `toEncoded`.

**Signature**

```ts
export interface toEncoded<S extends Top> extends
  Bottom<
    S["Encoded"],
    S["Encoded"],
    never,
    never,
    AST.AST,
    toEncoded<S>,
    S["Encoded"],
    S["Encoded"],
    ReadonlyArray<Top>,
    S["Encoded"],
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1725)

Since v4.0.0