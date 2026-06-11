Package: `effect`<br />
Module: `HttpIncomingMessage`<br />

## HttpIncomingMessage.schemaBodyJson

Creates a decoder that reads an incoming message's JSON body and decodes it with the supplied schema.

**Signature**

```ts
declare const schemaBodyJson: <S extends Schema.Top>(schema: S, options?: ParseOptions | undefined) => <E>(self: HttpIncomingMessage<E>) => Effect.Effect<S["Type"], E | Schema.SchemaError, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpIncomingMessage.ts#L64)

Since v4.0.0