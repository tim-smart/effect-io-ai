Package: `effect`<br />
Module: `Schema`<br />

## Schema.overrideToCodecIso

Type-level representation returned by `overrideToCodecIso`.

**Signature**

```ts
export interface overrideToCodecIso<S extends Constraint, Iso> extends
  BottomLazy<
    S["ast"],
    overrideToCodecIso<S, Iso>,
    S["~type.parameters"],
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly "Type": S["Type"]
  readonly "Encoded": S["Encoded"]
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"]
  readonly "~type.make.in": S["~type.make.in"]
  readonly "~type.make": S["~type.make"]
  readonly "Iso": Iso
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L13890)

Since v4.0.0