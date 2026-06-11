Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.schemaSearchParams

Decodes a schema from the parsed search parameters of the current request.

**Signature**

```ts
declare const schemaSearchParams: <A, I extends Readonly<Record<string, string | ReadonlyArray<string> | undefined>>, RD, RE>(schema: Schema.Codec<A, I, RD, RE>, options?: ParseOptions | undefined) => Effect.Effect<A, Schema.SchemaError, ParsedSearchParams | RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L222)

Since v4.0.0