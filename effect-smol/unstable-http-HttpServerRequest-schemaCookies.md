Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.schemaCookies

Decodes a schema from the cookies of the current request.

**Signature**

```ts
declare const schemaCookies: <A, I extends Readonly<Record<string, string | undefined>>, RD, RE>(schema: Schema.Codec<A, I, RD, RE>, options?: ParseOptions | undefined) => Effect.Effect<A, Schema.SchemaError, RD | HttpServerRequest>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L219)

Since v4.0.0