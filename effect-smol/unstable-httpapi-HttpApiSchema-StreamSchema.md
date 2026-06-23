Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.StreamSchema

Schema for a streaming HTTP API success response.

**Signature**

```ts
type StreamSchema = StreamSse<Sse.EventCodec, Schema.Top, unknown> | StreamUint8Array
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L379)

Since v4.0.0