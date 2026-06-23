Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.StringTree

A schema codec that decodes and encodes the schema's value type through
`Schema.StringTree` transport values.

**Signature**

```ts
export interface StringTree<S extends Schema.Constraint> extends
  Schema.Codec<
    S["Type"],
    Schema.StringTree,
    S["DecodingServices"],
    S["EncodingServices"]
  >
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L1269)

Since v4.0.0