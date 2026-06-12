Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.delete

Creates a `DELETE` endpoint declaration.

**Signature**

```ts
declare const delete: { <const Name extends string, const Path extends HttpRouter.PathInput, Params extends Schema.Top | Schema.Struct.Fields = never, Query extends Schema.Top | Schema.Struct.Fields = never, Payload extends Schema.Top | ReadonlyArray<Schema.Top> = never, Headers extends Schema.Top | Schema.Struct.Fields = never, const Success extends SuccessConstraint = HttpApiSchema.NoContent, const Error extends Schema.Top | ReadonlyArray<Schema.Top> = never>(name: Name, path: Path, options?: { readonly disableCodecs?: false | undefined; readonly params?: Params | undefined; readonly query?: Query | undefined; readonly headers?: Headers | undefined; readonly payload?: Payload | undefined; readonly success?: Success | undefined; readonly error?: (Error & ErrorNoStream<Types.NoInfer<Error>>) | undefined; } | undefined): HttpApiEndpoint<Name, "DELETE", Path, StringTree<Params extends Schema.Struct.Fields ? Schema.Struct<Params> : Params>, StringTree<Query extends Schema.Struct.Fields ? Schema.Struct<Query> : Query>, Json<ExtractSchemaOrArray<Payload>>, StringTree<Headers extends Schema.Struct.Fields ? Schema.Struct<Headers> : Headers>, JsonSuccessOrArray<Success>, Json<Error extends ReadonlyArray<Schema.Top> ? Error[number] : Error>, never, never>; <const Name extends string, const Path extends HttpRouter.PathInput, Params extends ParamsConstraint = never, Query extends QueryConstraint = never, Payload extends Schema.Top | ReadonlyArray<Schema.Top> = never, Headers extends HeadersConstraint = never, const Success extends SuccessConstraint = HttpApiSchema.NoContent, const Error extends ErrorConstraint = never>(name: Name, path: Path, options?: { readonly disableCodecs: true; readonly params?: Params | undefined; readonly query?: Query | undefined; readonly headers?: Headers | undefined; readonly payload?: Payload | undefined; readonly success?: Success | undefined; readonly error?: (Error & ErrorNoStream<Types.NoInfer<Error>>) | undefined; } | undefined): HttpApiEndpoint<Name, "DELETE", Path, Params extends Schema.Struct.Fields ? Schema.Struct<Params> : Params, Query extends Schema.Struct.Fields ? Schema.Struct<Query> : Query, ExtractSchemaOrArray<Payload>, ExtractSchemaOrArray<Headers>, ExtractSuccessOrArray<Success>, Error extends ReadonlyArray<Schema.Top> ? Error[number] : Error, never, never>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L1528)

Since v4.0.0