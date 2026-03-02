Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.HttpApiEndpoint

Represents an API endpoint. An API endpoint is mapped to a single route on
the underlying `HttpRouter`.

**Signature**

```ts
export interface HttpApiEndpoint<
  out Name extends string,
  out Method extends HttpMethod,
  out Path extends string,
  out Params extends Schema.Top = never,
  out Query extends Schema.Top = never,
  out Payload extends Schema.Top = never,
  out Headers extends Schema.Top = never,
  out Success extends Schema.Top = typeof HttpApiSchema.NoContent,
  out Error extends Schema.Top = typeof HttpApiSchemaError,
  in out Middleware = never,
  out MiddlewareR = never
> extends Pipeable {
  readonly [TypeId]: {
    readonly _MiddlewareR: Types.Covariant<MiddlewareR>
  }
  readonly "~Params": Params
  readonly "~Query": Query
  readonly "~Headers": Headers
  readonly "~Payload": Payload
  readonly "~Success": Success
  readonly "~Error": Error

  readonly name: Name
  readonly path: Path
  readonly method: Method
  readonly params: Schema.Top | undefined
  readonly query: Schema.Top | undefined
  readonly headers: Schema.Top | undefined
  readonly payload: PayloadMap
  readonly success: ReadonlySet<Schema.Top>
  readonly error: ReadonlySet<Schema.Top>
  readonly annotations: ServiceMap.ServiceMap<never>
  readonly middlewares: ReadonlySet<ServiceMap.Key<Middleware, any>>

  /**
   * Add a prefix to the path of the endpoint.
   */
  prefix<const Prefix extends HttpRouter.PathInput>(
    prefix: Prefix
  ): HttpApiEndpoint<
    Name,
    Method,
    `${Prefix}${Path}`,
    Params,
    Query,
    Payload,
    Headers,
    Success,
    Error,
    Middleware,
    MiddlewareR
  >

  /**
   * Add an `HttpApiMiddleware` to the endpoint.
   */
  middleware<I extends HttpApiMiddleware.AnyId, S>(middleware: ServiceMap.Key<I, S>): HttpApiEndpoint<
    Name,
    Method,
    Path,
    Params,
    Query,
    Payload,
    Headers,
    Success,
    Error,
    Middleware | I,
    HttpApiMiddleware.ApplyServices<I, MiddlewareR>
  >

  /**
   * Add an annotation on the endpoint.
   */
  annotate<I, S>(
    key: ServiceMap.Key<I, S>,
    value: Types.NoInfer<S>
  ): HttpApiEndpoint<
    Name,
    Method,
    Path,
    Params,
    Query,
    Payload,
    Headers,
    Success,
    Error,
    Middleware,
    MiddlewareR
  >

  /**
   * Merge the annotations of the endpoint with the provided service map.
   */
  annotateMerge<I>(
    annotations: ServiceMap.ServiceMap<I>
  ): HttpApiEndpoint<
    Name,
    Method,
    Path,
    Params,
    Query,
    Payload,
    Headers,
    Success,
    Error,
    Middleware,
    MiddlewareR
  >
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L47)

Since v4.0.0