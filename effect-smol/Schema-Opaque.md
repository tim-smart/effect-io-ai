Package: `effect`<br />
Module: `Schema`<br />

## Schema.Opaque

Type-level representation returned by `Opaque`.

**Signature**

```ts
export interface Opaque<Self, S extends Top, Brand> extends
  Bottom<
    Self,
    S["Encoded"],
    S["DecodingServices"],
    S["EncodingServices"],
    S["ast"],
    S["Rebuild"],
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
  new(_: never): S["Type"] & Brand
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6025)

Since v4.0.0