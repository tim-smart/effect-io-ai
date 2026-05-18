Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.schemaBodyJson

Creates a schema-based JSON body encoder that sets the encoded value on a request.

**Signature**

```ts
declare const schemaBodyJson: <S extends Schema.Top>(schema: S, options?: ParseOptions | undefined) => { (body: S["Type"]): (self: HttpClientRequest) => Effect.Effect<HttpClientRequest, HttpBody.HttpBodyError, S["EncodingServices"]>; (self: HttpClientRequest, body: S["Type"]): Effect.Effect<HttpClientRequest, HttpBody.HttpBodyError, S["EncodingServices"]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L709)

Since v4.0.0