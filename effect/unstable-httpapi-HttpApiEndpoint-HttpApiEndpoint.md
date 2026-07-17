Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.HttpApiEndpoint

Represents an API endpoint. An API endpoint is mapped to a single route on
the underlying `HttpRouter`.

**Signature**

```ts
export interface HttpApiEndpoint<
  out Identifier extends string,
  out Method extends HttpMethod,
  out Path extends string,
  out Params extends Schema.Top = never,
  out Query extends Schema.Top = never,
  out Payload extends Schema.Top = never,
  out Headers extends Schema.Top = never,
  out Success extends Schema.Top = typeof HttpApiSchema.NoContent,
  out Error extends Schema.Top = never,
  in out Middleware = never,
  out MiddlewareServices = never
> extends Pipeable {
  new(_: never): {}
  readonly [TypeId]: typeof TypeId
  readonly "~Params": Params
  readonly "~Query": Query
  readonly "~Headers": Headers
  readonly "~Payload": Payload
  readonly "~Success": Success
  readonly "~Error": Error
  readonly "~Middleware": Middleware
  readonly "~MiddlewareServices": MiddlewareServices
  readonly "~Request": RequestFromParts<this, Params["Type"], Query["Type"], Payload["Type"], Headers["Type"]>
  readonly "~RequestRaw": RequestRawFromParts<this, Params["Type"], Query["Type"], Headers["Type"]>

  readonly identifier: Identifier
  readonly path: Path
  readonly method: Method
  readonly params: Schema.Top | undefined
  readonly query: Schema.Top | undefined
  readonly headers: Schema.Top | undefined
  readonly payload: PayloadMap
  readonly success: ReadonlySet<Schema.Top>
  readonly error: ReadonlySet<Schema.Top>
  readonly annotations: Context.Context<never>
  readonly middlewares: ReadonlySet<Context.Key<Middleware, any>>

  /**
   * Add a prefix to the path of the endpoint.
   */
  prefix<const Prefix extends HttpRouter.PathInput>(
    prefix: Prefix
  ): HttpApiEndpoint<
    Identifier,
    Method,
    `${Prefix}${Path}`,
    Params,
    Query,
    Payload,
    Headers,
    Success,
    Error,
    Middleware,
    MiddlewareServices
  >

  /**
   * Add an `HttpApiMiddleware` to the endpoint.
   */
  middleware<I extends HttpApiMiddleware.AnyId, S>(middleware: Context.Key<I, S>): HttpApiEndpoint<
    Identifier,
    Method,
    Path,
    Params,
    Query,
    Payload,
    Headers,
    Success,
    Error,
    Middleware | I,
    HttpApiMiddleware.ApplyServices<I, MiddlewareServices>
  >

  /**
   * Add an annotation on the endpoint.
   */
  annotate<I, S>(
    key: Context.Key<I, S>,
    value: Types.NoInfer<S>
  ): HttpApiEndpoint<
    Identifier,
    Method,
    Path,
    Params,
    Query,
    Payload,
    Headers,
    Success,
    Error,
    Middleware,
    MiddlewareServices
  >

  /**
   * Merge the annotations of the endpoint with the provided context.
   */
  annotateMerge<I>(
    annotations: Context.Context<I>
  ): HttpApiEndpoint<
    Identifier,
    Method,
    Path,
    Params,
    Query,
    Payload,
    Headers,
    Success,
    Error,
    Middleware,
    MiddlewareServices
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L140)

Since v4.0.0