Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.schemaHeaders

Decodes a schema from the headers of the current request.

**Signature**

```ts
declare const schemaHeaders: <A, I extends Readonly<Record<string, string | undefined>>, RD>(schema: Schema.ConstraintCodec<A, I, RD, unknown>, options?: ParseOptions | undefined) => Effect.Effect<A, Schema.SchemaError, HttpServerRequest | RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L208)

Since v4.0.0