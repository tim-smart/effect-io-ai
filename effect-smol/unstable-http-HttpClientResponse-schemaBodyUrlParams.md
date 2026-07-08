Package: `effect`<br />
Module: `HttpClientResponse`<br />

## HttpClientResponse.schemaBodyUrlParams

Creates a decoder that reads response URL-encoded body parameters and decodes them with the supplied schema.

**Signature**

```ts
declare const schemaBodyUrlParams: <A, I extends Readonly<Record<string, string | ReadonlyArray<string> | undefined>>, RD>(schema: Schema.ConstraintCodec<A, I, RD, unknown>, options?: ParseOptions | undefined) => <E>(self: HttpIncomingMessage.HttpIncomingMessage<E>) => Effect.Effect<A, E | Schema.SchemaError, RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientResponse.ts#L42)

Since v4.0.0