Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeTo

Type-level representation returned by `decodeTo`.

**Signature**

```ts
export interface decodeTo<To extends Constraint, From extends Constraint, RD = never, RE = never> extends
  BottomLazy<
    To["ast"],
    decodeTo<To, From, RD, RE>,
    To["~type.parameters"],
    To["~type.mutability"],
    To["~type.optionality"],
    To["~type.constructor.default"],
    From["~encoded.mutability"],
    From["~encoded.optionality"]
  >
{
  readonly "Type": To["Type"]
  readonly "Encoded": From["Encoded"]
  readonly "DecodingServices": To["DecodingServices"] | From["DecodingServices"] | RD
  readonly "EncodingServices": To["EncodingServices"] | From["EncodingServices"] | RE
  readonly "~type.make.in": To["~type.make.in"]
  readonly "~type.make": To["~type.make"]
  readonly "Iso": To["Iso"]
  readonly from: From
  readonly to: To
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5329)

Since v4.0.0