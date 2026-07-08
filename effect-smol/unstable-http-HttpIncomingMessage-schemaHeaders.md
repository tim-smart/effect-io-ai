Package: `effect`<br />
Module: `HttpIncomingMessage`<br />

## HttpIncomingMessage.schemaHeaders

Creates a decoder that validates and decodes an incoming message's headers with the supplied schema.

**Signature**

```ts
declare const schemaHeaders: <A, I extends Readonly<Record<string, string | undefined>>, RD>(schema: Schema.ConstraintCodec<A, I, RD, unknown>, options?: ParseOptions | undefined) => <E>(self: HttpIncomingMessage<E>) => Effect.Effect<A, Schema.SchemaError, RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpIncomingMessage.ts#L100)

Since v4.0.0