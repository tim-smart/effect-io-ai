Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.schemaBodyMultipart

Persists the current multipart request body and decodes it with the supplied
schema.

The effect requires the services needed to persist multipart files, including a
scope, file system, and path service.

**Signature**

```ts
declare const schemaBodyMultipart: <A, I extends Partial<Multipart.Persisted>, RD, RE>(schema: Schema.Codec<A, I, RD, RE>, options?: ParseOptions | undefined) => Effect.Effect<A, Multipart.MultipartError | Schema.SchemaError, HttpServerRequest | Scope.Scope | FileSystem.FileSystem | Path.Path | RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L295)

Since v4.0.0