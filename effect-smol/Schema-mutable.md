Package: `effect`<br />
Module: `Schema`<br />

## Schema.mutable

Schema type that makes array or tuple elements mutable (removes `readonly`).
Produced by `mutable`.

**Signature**

```ts
export interface mutable<S extends Top & { readonly "ast": AST.Arrays }> extends
  Bottom<
    Mutable<S["Type"]>,
    Mutable<S["Encoded"]>,
    S["DecodingServices"],
    S["EncodingServices"],
    S["ast"],
    mutable<S>,
    // "~type.make" and "~type.make.in" as they are because they are contravariant
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
{
  readonly "~rebuild.out": this
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3349)

Since v4.0.0