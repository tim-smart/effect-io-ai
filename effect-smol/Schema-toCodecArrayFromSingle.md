Package: `effect`<br />
Module: `Schema`<br />

## Schema.toCodecArrayFromSingle

Type-level representation returned by `toCodecArrayFromSingle`.

**Signature**

```ts
export interface toCodecArrayFromSingle<S extends Constraint> extends
  BottomLazy<
    S["ast"],
    toCodecArrayFromSingle<S>,
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
  readonly "Iso": S["Iso"]
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L13529)

Since v4.0.0