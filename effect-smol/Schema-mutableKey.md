Package: `effect`<br />
Module: `Schema`<br />

## Schema.mutableKey

Type-level representation returned by `mutableKey`.

**Signature**

```ts
export interface mutableKey<S extends Constraint> extends
  BottomLazy<
    S["ast"],
    mutableKey<S>,
    S["~type.parameters"],
    "mutable",
    S["~type.optionality"],
    S["~type.constructor.default"],
    "mutable",
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
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2414)

Since v4.0.0