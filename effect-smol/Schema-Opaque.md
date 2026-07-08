Package: `effect`<br />
Module: `Schema`<br />

## Schema.Opaque

Type-level representation returned by `Opaque`.

**Signature**

```ts
export interface Opaque<Self, S extends Top, Brand> extends
  BottomLazy<
    S["ast"],
    S["Rebuild"],
    S["~type.parameters"],
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly "Type": Self
  readonly "Encoded": S["Encoded"]
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"]
  readonly "~type.make.in": S["~type.make.in"]
  readonly "~type.make": S["~type.make"]
  readonly "Iso": S["Iso"]
  new(_: never): S["Type"] & Brand
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6269)

Since v4.0.0