Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.schemaBodyJson

Reads the current request body as JSON and decodes it with the supplied schema.

**Details**

The effect can fail if the body cannot be read or parsed, or if schema decoding
fails.

**Signature**

```ts
declare const schemaBodyJson: <A, RD>(schema: Schema.ConstraintDecoder<A, RD>, options?: ParseOptions | undefined) => Effect.Effect<A, HttpServerError | Schema.SchemaError, HttpServerRequest | RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L244)

Since v4.0.0