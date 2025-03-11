## HttpApiEndpoint

Represents an API endpoint. An API endpoint is mapped to a single route on
the underlying `HttpRouter`.

**Signature**

```ts
export interface HttpApiEndpoint<
  out Name extends string,
  out Method extends HttpMethod,
  in out Path = never,
  in out UrlParams = never,
  in out Payload = never,
  in out Headers = never,
  in out Success = void,
  in out Error = never,
  out R = never,
  out RE = never
> extends Pipeable {
  readonly [TypeId]: TypeId
  readonly name: Name
  readonly path: PathSegment
  readonly method: Method
  readonly pathSchema: Option.Option<Schema.Schema<Path, unknown, R>>
  readonly urlParamsSchema: Option.Option<Schema.Schema<UrlParams, unknown, R>>
  readonly payloadSchema: Option.Option<Schema.Schema<Payload, unknown, R>>
  readonly headersSchema: Option.Option<Schema.Schema<Headers, unknown, R>>
  readonly successSchema: Schema.Schema<Success, unknown, R>
  readonly errorSchema: Schema.Schema<Error, unknown, RE>
  readonly annotations: Context.Context<never>
  readonly middlewares: ReadonlySet<HttpApiMiddleware.TagClassAny>

  /**
   * Add a schema for the success response of the endpoint. The status code
   * will be inferred from the schema, otherwise it will default to 200.
   */
  addSuccess<S extends Schema.Schema.Any>(
    schema: S,
    annotations?: {
      readonly status?: number | undefined
    }
  ): HttpApiEndpoint<
    Name,
    Method,
    Path,
    UrlParams,
    Payload,
    Headers,
    Exclude<Success, void> | Schema.Schema.Type<S>,
    Error,
    R | Schema.Schema.Context<S>,
    RE
  >

  /**
   * Add an error response schema to the endpoint. The status code
   * will be inferred from the schema, otherwise it will default to 500.
   */
  addError<E extends Schema.Schema.Any>(
    schema: E,
    annotations?: {
      readonly status?: number | undefined
    }
  ): HttpApiEndpoint<
    Name,
    Method,
    Path,
    UrlParams,
    Payload,
    Headers,
    Success,
    Error | Schema.Schema.Type<E>,
    R,
    RE | Schema.Schema.Context<E>
  >

  /**
   * Set the schema for the request body of the endpoint. The schema will be
   * used to validate the request body before the handler is called.
   *
   * For endpoints with no request body, the payload will use the url search
   * parameters.
   *
   * You can set a multipart schema to handle file uploads by using the
   * `HttpApiSchema.Multipart` combinator.
   */
  setPayload<P extends Schema.Schema.Any>(
    schema: P & HttpApiEndpoint.ValidatePayload<Method, P>
  ): HttpApiEndpoint<
    Name,
    Method,
    Path,
    UrlParams,
    Schema.Schema.Type<P>,
    Headers,
    Success,
    Error,
    R | Schema.Schema.Context<P>,
    RE
  >

  /**
   * Set the schema for the path parameters of the endpoint. The schema will be
   * used to validate the path parameters before the handler is called.
   */
  setPath<Path extends Schema.Schema.Any>(
    schema: Path & HttpApiEndpoint.ValidatePath<Path>
  ): HttpApiEndpoint<
    Name,
    Method,
    Schema.Schema.Type<Path>,
    UrlParams,
    Payload,
    Headers,
    Success,
    Error,
    R | Schema.Schema.Context<Path>,
    RE
  >

  /**
   * Set the schema for the url search parameters of the endpoint.
   */
  setUrlParams<UrlParams extends Schema.Schema.Any>(
    schema: UrlParams & HttpApiEndpoint.ValidateUrlParams<UrlParams>
  ): HttpApiEndpoint<
    Name,
    Method,
    Path,
    Schema.Schema.Type<UrlParams>,
    Payload,
    Headers,
    Success,
    Error,
    R | Schema.Schema.Context<Path>,
    RE
  >

  /**
   * Set the schema for the headers of the endpoint. The schema will be
   * used to validate the headers before the handler is called.
   */
  setHeaders<H extends Schema.Schema.Any>(
    schema: H & HttpApiEndpoint.ValidateHeaders<H>
  ): HttpApiEndpoint<
    Name,
    Method,
    Path,
    UrlParams,
    Payload,
    Schema.Schema.Type<H>,
    Success,
    Error,
    R | Schema.Schema.Context<H>,
    RE
  >

  /**
   * Add a prefix to the path of the endpoint.
   */
  prefix(
    prefix: PathSegment
  ): HttpApiEndpoint<Name, Method, Path, UrlParams, Payload, Headers, Success, Error, R, RE>

  /**
   * Add an `HttpApiMiddleware` to the endpoint.
   */
  middleware<I extends HttpApiMiddleware.HttpApiMiddleware.AnyId, S>(middleware: Context.Tag<I, S>): HttpApiEndpoint<
    Name,
    Method,
    Path,
    UrlParams,
    Payload,
    Headers,
    Success,
    Error | HttpApiMiddleware.HttpApiMiddleware.Error<I>,
    R | I,
    RE | HttpApiMiddleware.HttpApiMiddleware.ErrorContext<I>
  >

  /**
   * Add an annotation on the endpoint.
   */
  annotate<I, S>(
    tag: Context.Tag<I, S>,
    value: S
  ): HttpApiEndpoint<Name, Method, Path, UrlParams, Payload, Headers, Success, Error, R, RE>

  /**
   * Merge the annotations of the endpoint with the provided context.
   */
  annotateContext<I>(
    context: Context.Context<I>
  ): HttpApiEndpoint<Name, Method, Path, UrlParams, Payload, Headers, Success, Error, R, RE>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApiEndpoint.ts#L52)

Since v1.0.0