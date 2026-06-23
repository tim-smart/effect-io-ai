Package: `effect`<br />
Module: `Schema`<br />

## Schema.refine

Type-level representation returned by `refine`.

**Signature**

```ts
export interface refine<T extends S["Type"], S extends Constraint> extends
  BottomLazy<
    S["ast"],
    refine<T, S>,
    S["~type.parameters"],
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly "Type": T
  readonly "Encoded": S["Encoded"]
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"]
  readonly "~type.make.in": S["~type.make.in"]
  readonly "~type.make": T
  readonly "Iso": T
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4955)

Since v3.10.0