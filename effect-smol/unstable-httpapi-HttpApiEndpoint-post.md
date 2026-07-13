Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.post

Creates a `POST` endpoint declaration.

**Signature**

```ts
declare const post: { <const Identifier extends string, const Path extends HttpRouter.PathInput, Params extends Schema.Top | Schema.Struct.Fields = never, Query extends Schema.Top | Schema.Struct.Fields = never, Payload extends Schema.Top | ReadonlyArray<Schema.Top> = never, Headers extends Schema.Top | Schema.Struct.Fields = never, const Success extends SuccessConstraint = HttpApiSchema.NoContent, const Error extends Schema.Top | ReadonlyArray<Schema.Top> = never>(identifier: Identifier, path: Path, options?: { readonly disableCodecs?: false | undefined; readonly params?: Params | undefined; readonly query?: Query | undefined; readonly headers?: Headers | undefined; readonly payload?: Payload | undefined; readonly success?: Success | undefined; readonly error?: (Error & ErrorNoStream<Types.NoInfer<Error>>) | undefined; } | undefined): HttpApiEndpoint<Identifier, "POST", Path, ToStringTreeCodec<Params>, ToStringTreeCodec<Query>, ToJsonCodec<ToSchema<Payload>>, ToStringTreeCodec<Headers>, ToSuccessCodec<Success>, ToJsonCodec<Error extends ReadonlyArray<Schema.Constraint> ? Error[number] : Error>, never, never>; <const Identifier extends string, const Path extends HttpRouter.PathInput, Params extends ParamsConstraint = never, Query extends QueryConstraint = never, Payload extends Schema.Top | ReadonlyArray<Schema.Top> = never, Headers extends HeadersConstraint = never, const Success extends SuccessConstraint = HttpApiSchema.NoContent, const Error extends ErrorConstraint = never>(identifier: Identifier, path: Path, options?: { readonly disableCodecs: true; readonly params?: Params | undefined; readonly query?: Query | undefined; readonly headers?: Headers | undefined; readonly payload?: Payload | undefined; readonly success?: Success | undefined; readonly error?: (Error & ErrorNoStream<Types.NoInfer<Error>>) | undefined; } | undefined): HttpApiEndpoint<Identifier, "POST", Path, Params extends Schema.Struct.Fields ? Schema.Struct<Params> : Params, Query extends Schema.Struct.Fields ? Schema.Struct<Query> : Query, ToSchema<Payload>, ToSchema<Headers>, UnwrapReadonlyArray<Success>, Error extends ReadonlyArray<Schema.Constraint> ? Error[number] : Error, never, never>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L1317)

Since v4.0.0