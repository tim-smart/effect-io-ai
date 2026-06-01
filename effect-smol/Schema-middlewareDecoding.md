Package: `effect`<br />
Module: `Schema`<br />

## Schema.middlewareDecoding

Type-level representation returned by `middlewareDecoding`.

**Signature**

```ts
export interface middlewareDecoding<S extends Top, RD> extends
  Bottom<
    S["Type"],
    S["Encoded"],
    RD,
    S["EncodingServices"],
    S["ast"],
    middlewareDecoding<S, RD>,
    S["~type.make.in"],
    S["Iso"],
    S["~type.parameters"],
    S["~type.make"],
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4761)

Since v4.0.0