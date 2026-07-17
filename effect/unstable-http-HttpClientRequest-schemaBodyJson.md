Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.schemaBodyJson

Creates a schema-based JSON body encoder that sets the encoded value on a request.

**Signature**

```ts
declare const schemaBodyJson: <S extends Schema.Constraint>(schema: S, options?: ParseOptions | undefined) => { (body: S["Type"]): (self: HttpClientRequest) => Effect.Effect<HttpClientRequest, HttpBody.HttpBodyError, S["EncodingServices"]>; (self: HttpClientRequest, body: S["Type"]): Effect.Effect<HttpClientRequest, HttpBody.HttpBodyError, S["EncodingServices"]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClientRequest.ts#L711)

Since v4.0.0