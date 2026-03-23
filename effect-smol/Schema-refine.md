Package: `effect`<br />
Module: `Schema`<br />

## Schema.refine

The output type of `refine`, narrowing the schema's `Type` to `T` via a
type guard.

**Signature**

```ts
export interface refine<T extends S["Type"], S extends Top> extends
  Bottom<
    T,
    S["Encoded"],
    S["DecodingServices"],
    S["EncodingServices"],
    S["ast"],
    refine<T, S>,
    S["~type.make.in"],
    T,
    S["~type.parameters"],
    T,
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3681)

Since v4.0.0