Package: `effect`<br />
Module: `Schema`<br />

## Schema.overrideToCodecIso

The schema type returned by `overrideToCodecIso`. Carries a custom
`Iso` type parameter and exposes the original `schema`.

**Signature**

```ts
export interface overrideToCodecIso<S extends Top, Iso> extends
  Bottom<
    S["Type"],
    S["Encoded"],
    S["DecodingServices"],
    S["EncodingServices"],
    S["ast"],
    overrideToCodecIso<S, Iso>,
    S["~type.make.in"],
    Iso,
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10841)

Since v4.0.0