Package: `effect`<br />
Module: `HttpClientResponse`<br />

## HttpClientResponse.schemaBodyJson

Creates a decoder that reads a response JSON body and decodes it with the supplied schema.

**Signature**

```ts
declare const schemaBodyJson: <S extends Schema.Constraint>(schema: S, options?: ParseOptions | undefined) => <E>(self: HttpIncomingMessage.HttpIncomingMessage<E>) => Effect.Effect<S["Type"], E | Schema.SchemaError, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClientResponse.ts#L35)

Since v4.0.0