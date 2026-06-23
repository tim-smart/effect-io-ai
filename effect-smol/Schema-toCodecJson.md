Package: `effect`<br />
Module: `Schema`<br />

## Schema.toCodecJson

Type-level representation returned by `toCodecJson`.

**Signature**

```ts
export interface toCodecJson<S extends Constraint> extends
  BottomLazy<
    S["ast"],
    toCodecJson<S>,
    S["~type.parameters"],
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly "Type": S["Type"]
  readonly "Encoded": Json
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"]
  readonly "~type.make.in": S["~type.make.in"]
  readonly "~type.make": S["~type.make"]
  readonly "Iso": S["Iso"]
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L13312)

Since v4.0.0