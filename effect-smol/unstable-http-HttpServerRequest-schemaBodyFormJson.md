Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.schemaBodyFormJson

Creates a decoder for a JSON value stored in a form field.

**Details**

For multipart requests, the named multipart field is decoded as JSON. For
URL-encoded requests, the named parameter is decoded as JSON and then decoded
with the supplied schema.

**Signature**

```ts
declare const schemaBodyFormJson: <A, I, RD, RE>(schema: Schema.Codec<A, I, RD, RE>, options?: ParseOptions | undefined) => (field: string) => Effect.Effect<A, Schema.SchemaError | HttpServerError, Scope.Scope | Path.Path | FileSystem.FileSystem | HttpServerRequest | RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L355)

Since v4.0.0