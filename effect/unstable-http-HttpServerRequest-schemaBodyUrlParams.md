Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.schemaBodyUrlParams

Reads the current request body as URL-encoded parameters and decodes them with
the supplied schema.

**Signature**

```ts
declare const schemaBodyUrlParams: <A, I extends Readonly<Record<string, string | ReadonlyArray<string> | undefined>>, RD>(schema: Schema.ConstraintCodec<A, I, RD, unknown>, options?: ParseOptions | undefined) => Effect.Effect<A, HttpServerError | Schema.SchemaError, HttpServerRequest | RD>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServerRequest.ts#L295)

Since v4.0.0