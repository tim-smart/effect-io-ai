Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.schemaParams

Decodes a schema from the current route path parameters and search parameters.

**Details**

When the same key appears in both sources, the path parameter value is used.

**Signature**

```ts
declare const schemaParams: <A, I extends Readonly<Record<string, string | ReadonlyArray<string> | undefined>>, RD, RE>(schema: Schema.Codec<A, I, RD, RE>, options?: ParseOptions | undefined) => Effect.Effect<A, Schema.SchemaError, HttpServerRequest.ParsedSearchParams | RouteContext | RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L417)

Since v4.0.0