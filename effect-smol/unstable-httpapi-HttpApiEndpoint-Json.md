Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Json

A schema codec that decodes and encodes the schema's value type through JSON
transport values.

**Signature**

```ts
export interface Json<S extends Schema.Top>
  extends Schema.Codec<S["Type"], Schema.Json, S["DecodingServices"], S["EncodingServices"]>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L1240)

Since v4.0.0