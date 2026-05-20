Package: `effect`<br />
Module: `HttpClientResponse`<br />

## HttpClientResponse.schemaJson

Creates a decoder for a response's status, headers, and JSON body using the supplied schema.

**Signature**

```ts
declare const schemaJson: <A, I extends { readonly status?: number | undefined; readonly headers?: Readonly<Record<string, string | undefined>> | undefined; readonly body?: unknown; }, RD, RE>(schema: Schema.Codec<A, I, RD, RE>, options?: ParseOptions | undefined) => (self: HttpClientResponse) => Effect.Effect<A, Schema.SchemaError | Error.HttpClientError, RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientResponse.ts#L98)

Since v4.0.0