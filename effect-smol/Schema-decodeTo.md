Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeTo

Schema type produced by `decodeTo` when a custom transformation composes a
`From` schema with a `To` schema.

**Details**

`Type` is `To["Type"]` and `Encoded` is `From["Encoded"]`. Decoding services
are `To["DecodingServices"] | From["DecodingServices"] | RD`; encoding
services are `To["EncodingServices"] | From["EncodingServices"] | RE`.

**See**

- `compose` for the passthrough (no transformation) variant

**Signature**

```ts
export interface decodeTo<To extends Top, From extends Top, RD = never, RE = never> extends
  Bottom<
    To["Type"],
    From["Encoded"],
    To["DecodingServices"] | From["DecodingServices"] | RD,
    To["EncodingServices"] | From["EncodingServices"] | RE,
    To["ast"],
    decodeTo<To, From, RD, RE>,
    To["~type.make.in"],
    To["Iso"],
    To["~type.parameters"],
    To["~type.make"],
    To["~type.mutability"],
    To["~type.optionality"],
    To["~type.constructor.default"],
    From["~encoded.mutability"],
    From["~encoded.optionality"]
  >
{
  readonly from: From
  readonly to: To
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4542)

Since v4.0.0