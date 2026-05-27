Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.schemaJson

Decodes a schema from the current request and its JSON body.

**Details**

The input passed to the schema includes the request method, URL, headers,
cookies, path parameters, search parameters, and parsed JSON body. The effect
fails if the body cannot be parsed or the schema decode fails.

**Signature**

```ts
declare const schemaJson: <A, I extends Partial<{ readonly method: HttpMethod.HttpMethod; readonly url: string; readonly cookies: Readonly<Record<string, string | undefined>>; readonly headers: Readonly<Record<string, string | undefined>>; readonly pathParams: Readonly<Record<string, string | undefined>>; readonly searchParams: Readonly<Record<string, string | ReadonlyArray<string> | undefined>>; readonly body: any; }>, RD, RE>(schema: Schema.Codec<A, I, RD, RE>, options?: ParseOptions | undefined) => Effect.Effect<A, HttpServerError.HttpServerError | Schema.SchemaError, HttpServerRequest.HttpServerRequest | HttpServerRequest.ParsedSearchParams | RouteContext | RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L332)

Since v4.0.0