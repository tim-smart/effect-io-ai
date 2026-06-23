Package: `effect`<br />
Module: `Schema`<br />

## Schema.optionalKey

Type-level representation returned by `optionalKey`.

**Signature**

```ts
export interface optionalKey<S extends Constraint> extends
  BottomLazy<
    S["ast"],
    optionalKey<S>,
    S["~type.parameters"],
    S["~type.mutability"],
    "optional",
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    "optional"
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2215)

Since v4.0.0