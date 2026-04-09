Package: `effect`<br />
Module: `Schema`<br />

## Schema.Opaque

The interface type for schemas created by `Opaque`.
Carries the same encoded/decoded shape as `S` but replaces `Type` with `Self & Brand`,
making the decoded value nominally distinct.

**See**

- `Opaque` for the constructor

**Signature**

```ts
export interface Opaque<Self, S extends Top, Brand> extends
  Bottom<
    Self,
    S["Encoded"],
    S["DecodingServices"],
    S["EncodingServices"],
    S["ast"],
    S["~rebuild.out"],
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4719)

Since v4.0.0