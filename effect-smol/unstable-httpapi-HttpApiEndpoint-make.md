Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.make

Creates endpoint constructors for a specific HTTP method. The resulting
constructor builds an `HttpApiEndpoint` from an identifier, path, and optional request
and response schemas, applying automatic JSON or string-tree codecs unless
`disableCodecs` is enabled.

**Signature**

```ts
declare const make: <Method extends HttpMethod>(method: Method) => { <const Identifier extends string, const Path extends HttpRouter.PathInput, Params extends Schema.Top | Schema.Struct.Fields = never, Query extends Schema.Top | Schema.Struct.Fields = never, Payload extends PayloadConstraintCodecs<Method> = never, Headers extends Schema.Top | Schema.Struct.Fields = never, const Success extends SuccessConstraint = HttpApiSchema.NoContent, const Error extends Schema.Top | ReadonlyArray<Schema.Top> = never>(identifier: Identifier, path: Path, options?: { readonly disableCodecs?: false | undefined; readonly params?: Params | undefined; readonly query?: Query | undefined; readonly headers?: Headers | undefined; readonly payload?: Payload | undefined; readonly success?: Success | undefined; readonly error?: (Error & ErrorNoStream<Types.NoInfer<Error>>) | undefined; }): HttpApiEndpoint<Identifier, Method, Path, ToStringTreeCodec<Params>, ToStringTreeCodec<Query>, Method extends HttpMethod.WithBody ? ToJsonCodec<ToSchema<Payload>> : ToStringTreeCodec<ToSchema<Payload>>, ToStringTreeCodec<Headers>, ToSuccessCodec<Success>, ToJsonCodec<Error extends ReadonlyArray<Schema.Constraint> ? Error[number] : Error>>; <const Identifier extends string, const Path extends HttpRouter.PathInput, Params extends ParamsConstraint = never, Query extends QueryConstraint = never, Payload extends PayloadConstraint<Method> = never, Headers extends HeadersConstraint = never, const Success extends SuccessConstraint = HttpApiSchema.NoContent, const Error extends ErrorConstraint = never>(identifier: Identifier, path: Path, options?: { readonly disableCodecs: true; readonly params?: Params | undefined; readonly query?: Query | undefined; readonly headers?: Headers | undefined; readonly payload?: Payload | undefined; readonly success?: Success | undefined; readonly error?: (Error & ErrorNoStream<Types.NoInfer<Error>>) | undefined; }): HttpApiEndpoint<Identifier, Method, Path, Params extends Schema.Struct.Fields ? Schema.Struct<Params> : Params, Query extends Schema.Struct.Fields ? Schema.Struct<Query> : Query, ToSchema<Payload>, ToSchema<Headers>, UnwrapReadonlyArray<Success>, Error extends ReadonlyArray<Schema.Constraint> ? Error[number] : Error>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L964)

Since v4.0.0