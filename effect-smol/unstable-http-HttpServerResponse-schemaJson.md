Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.schemaJson

Creates a JSON response constructor backed by a schema encoder.

**Details**

The returned function encodes the value with the supplied schema before
serializing it as JSON, and can fail with `HttpBodyError` if schema encoding or
JSON serialization fails.

**Signature**

```ts
declare const schemaJson: <A, RE>(schema: Schema.ConstraintCodec<A, unknown, unknown, RE>, options?: ParseOptions | undefined) => (body: A, options?: Options.WithContentType | undefined) => Effect.Effect<HttpServerResponse, Body.HttpBodyError, RE>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L316)

Since v4.0.0