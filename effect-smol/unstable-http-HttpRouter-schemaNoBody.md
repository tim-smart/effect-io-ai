Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.schemaNoBody

Decodes a schema from the current request without reading the request body.

The input passed to the schema includes the request method, URL, headers,
cookies, path parameters, and search parameters.

**Signature**

```ts
declare const schemaNoBody: <A, I extends Partial<{ readonly method: HttpMethod.HttpMethod; readonly url: string; readonly cookies: Readonly<Record<string, string | undefined>>; readonly headers: Readonly<Record<string, string | undefined>>; readonly pathParams: Readonly<Record<string, string | undefined>>; readonly searchParams: Readonly<Record<string, string | ReadonlyArray<string> | undefined>>; }>, RD, RE>(schema: Schema.Codec<A, I, RD, RE>, options?: ParseOptions | undefined) => Effect.Effect<A, Schema.SchemaError, HttpServerRequest.HttpServerRequest | HttpServerRequest.ParsedSearchParams | RouteContext | RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L354)

Since v4.0.0