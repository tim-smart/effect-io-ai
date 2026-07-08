Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.schemaBodyForm

Decodes the current request body as form data.

**Details**

Multipart requests are persisted and decoded as multipart data; other form
requests are decoded from URL-encoded body parameters.

**Signature**

```ts
declare const schemaBodyForm: <A, I extends Partial<Multipart.Persisted>, RD>(schema: Schema.ConstraintCodec<A, I, RD, unknown>, options?: ParseOptions | undefined) => Effect.Effect<A, Schema.SchemaError | Multipart.MultipartError | HttpServerError, Scope.Scope | Path.Path | FileSystem.FileSystem | HttpServerRequest | RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L267)

Since v4.0.0