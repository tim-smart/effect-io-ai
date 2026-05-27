Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.make

Creates endpoint constructors for a specific HTTP method. The resulting
constructor builds an `HttpApiEndpoint` from a name, path, and optional request
and response schemas, applying automatic JSON or string-tree codecs unless
`disableCodecs` is enabled.

**Signature**

```ts
declare const make: <Method extends HttpMethod>(method: Method) => { <const Name extends string, const Path extends HttpRouter.PathInput, Params extends Schema.Top | Schema.Struct.Fields = never, Query extends Schema.Top | Schema.Struct.Fields = never, Payload extends PayloadConstraintCodecs<Method> = never, Headers extends Schema.Top | Schema.Struct.Fields = never, const Success extends Schema.Top | ReadonlyArray<Schema.Top> = HttpApiSchema.NoContent, const Error extends Schema.Top | ReadonlyArray<Schema.Top> = never>(name: Name, path: Path, options?: { readonly disableCodecs?: false | undefined; readonly params?: Params | undefined; readonly query?: Query | undefined; readonly headers?: Headers | undefined; readonly payload?: Payload | undefined; readonly success?: Success | undefined; readonly error?: Error | undefined; }): HttpApiEndpoint<Name, Method, Path, StringTree<Params extends Schema.Struct.Fields ? Schema.Struct<Params> : Params>, StringTree<Query extends Schema.Struct.Fields ? Schema.Struct<Query> : Query>, Method extends HttpMethod.WithBody ? Json<ExtractSchemaOrArray<Payload>> : StringTree<ExtractSchemaOrArray<Payload>>, StringTree<Headers extends Schema.Struct.Fields ? Schema.Struct<Headers> : Headers>, Json<Success extends ReadonlyArray<Schema.Top> ? Success[number] : Success>, Json<Error extends ReadonlyArray<Schema.Top> ? Error[number] : Error>>; <const Name extends string, const Path extends HttpRouter.PathInput, Params extends ParamsConstraint = never, Query extends QueryConstraint = never, Payload extends PayloadConstraint<Method> = never, Headers extends HeadersConstraint = never, const Success extends SuccessConstraint = HttpApiSchema.NoContent, const Error extends ErrorConstraint = never>(name: Name, path: Path, options?: { readonly disableCodecs: true; readonly params?: Params | undefined; readonly query?: Query | undefined; readonly headers?: Headers | undefined; readonly payload?: Payload | undefined; readonly success?: Success | undefined; readonly error?: Error | undefined; }): HttpApiEndpoint<Name, Method, Path, Params extends Schema.Struct.Fields ? Schema.Struct<Params> : Params, Query extends Schema.Struct.Fields ? Schema.Struct<Query> : Query, ExtractSchemaOrArray<Payload>, ExtractSchemaOrArray<Headers>, Success extends ReadonlyArray<Schema.Top> ? Success[number] : Success, Error extends ReadonlyArray<Schema.Top> ? Error[number] : Error>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L1110)

Since v4.0.0