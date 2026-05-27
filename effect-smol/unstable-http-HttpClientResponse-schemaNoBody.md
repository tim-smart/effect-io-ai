Package: `effect`<br />
Module: `HttpClientResponse`<br />

## HttpClientResponse.schemaNoBody

Creates a decoder for a response's status and headers without reading a response body.

**Signature**

```ts
declare const schemaNoBody: <A, I extends { readonly status?: number | undefined; readonly headers?: Readonly<Record<string, string>> | undefined; }, RD, RE>(schema: Schema.Codec<A, I, RD, RE>, options?: ParseOptions | undefined) => (self: HttpClientResponse) => Effect.Effect<A, Schema.SchemaError, RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientResponse.ts#L148)

Since v4.0.0