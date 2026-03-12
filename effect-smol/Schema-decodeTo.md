Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeTo

The type produced by `decodeTo` when a custom transformation is provided.

- `Type` is `To["Type"]`, `Encoded` is `From["Encoded"]`
- Decoding services from both `from` and `to` are combined

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
  readonly "~rebuild.out": this
  readonly from: From
  readonly to: To
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3935)

Since v4.0.0