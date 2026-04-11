Package: `effect`<br />
Module: `Schema`<br />

## Schema.middlewareEncoding

A schema that wraps another schema and intercepts its encoding pipeline.

The interceptor receives the full encoding `Effect` and may replace, modify,
or augment it — including adding service requirements via `RE`.

**See**

- `middlewareEncoding` for the constructor

**Signature**

```ts
export interface middlewareEncoding<S extends Top, RE> extends
  Bottom<
    S["Type"],
    S["Encoded"],
    S["DecodingServices"],
    RE,
    S["ast"],
    middlewareEncoding<S, RE>,
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3873)

Since v4.0.0