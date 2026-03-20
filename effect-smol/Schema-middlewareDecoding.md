Package: `effect`<br />
Module: `Schema`<br />

## Schema.middlewareDecoding

A schema that wraps another schema and intercepts its decoding pipeline.

The interceptor receives the full decoding `Effect` and may replace, modify,
or augment it — including adding service requirements via `RD`.

**See**

- `middlewareDecoding` for the constructor

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
  readonly "~rebuild.out": this
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3791)

Since v4.0.0