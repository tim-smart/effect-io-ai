Package: `@effect/platform`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.HttpApiGroup

An `HttpApiGroup` is a collection of `HttpApiEndpoint`s. You can use an `HttpApiGroup` to
represent a portion of your domain.

The endpoints can be implemented later using the `HttpApiBuilder.group` api.

**Signature**

```ts
export interface HttpApiGroup<
  out Id extends string,
  out Endpoints extends HttpApiEndpoint.HttpApiEndpoint.Any = never,
  in out Error = HttpApiDecodeError,
  out R = never,
  out TopLevel extends (true | false) = false
> extends Pipeable {
  new(_: never): {}
  readonly [TypeId]: TypeId
  readonly identifier: Id
  readonly topLevel: TopLevel
  readonly endpoints: Record.ReadonlyRecord<string, Endpoints>
  readonly errorSchema: Schema.Schema<Error, unknown, R>
  readonly annotations: Context.Context<never>
  readonly middlewares: ReadonlySet<HttpApiMiddleware.TagClassAny>

  /**
   * Add an `HttpApiEndpoint` to an `HttpApiGroup`.
   */
  add<A extends HttpApiEndpoint.HttpApiEndpoint.Any>(
    endpoint: A
  ): HttpApiGroup<Id, Endpoints | A, Error, R, TopLevel>

  /**
   * Add an error schema to an `HttpApiGroup`, which is shared by all endpoints in the
   * group.
   */
  addError<A, I, RX>(
    schema: Schema.Schema<A, I, RX>,
    annotations?: {
      readonly status?: number | undefined
    }
  ): HttpApiGroup<Id, Endpoints, Error | A, R | RX, TopLevel>

  /**
   * Add a path prefix to all endpoints in an `HttpApiGroup`. Note that this will only
   * add the prefix to the endpoints before this api is called.
   */
  prefix(prefix: HttpApiEndpoint.PathSegment): HttpApiGroup<Id, Endpoints, Error, R, TopLevel>

  /**
   * Add an `HttpApiMiddleware` to the `HttpApiGroup`.
   *
   * It will be applied to all endpoints in the group.
   */
  middleware<I extends HttpApiMiddleware.HttpApiMiddleware.AnyId, S>(middleware: Context.Tag<I, S>): HttpApiGroup<
    Id,
    Endpoints,
    Error | HttpApiMiddleware.HttpApiMiddleware.Error<I>,
    R | I | HttpApiMiddleware.HttpApiMiddleware.ErrorContext<I>,
    TopLevel
  >

  /**
   * Add an `HttpApiMiddleware` to each endpoint in the `HttpApiGroup`.
   *
   * Endpoints added after this api is called will not have the middleware
   * applied.
   */
  middlewareEndpoints<I extends HttpApiMiddleware.HttpApiMiddleware.AnyId, S>(
    middleware: Context.Tag<I, S>
  ): HttpApiGroup<
    Id,
    HttpApiEndpoint.HttpApiEndpoint.AddContext<Endpoints, I>,
    Error,
    R,
    TopLevel
  >

  /**
   * Merge the annotations of an `HttpApiGroup` with a new context.
   */
  annotateContext<I>(context: Context.Context<I>): HttpApiGroup<Id, Endpoints, Error, R, TopLevel>

  /**
   * Add an annotation to an `HttpApiGroup`.
   */
  annotate<I, S>(tag: Context.Tag<I, S>, value: S): HttpApiGroup<Id, Endpoints, Error, R, TopLevel>

  /**
   * For each endpoint in an `HttpApiGroup`, update the annotations with a new
   * context.
   *
   * Note that this will only update the annotations before this api is called.
   */
  annotateEndpointsContext<I>(context: Context.Context<I>): HttpApiGroup<Id, Endpoints, Error, R, TopLevel>

  /**
   * For each endpoint in an `HttpApiGroup`, add an annotation.
   *
   * Note that this will only add the annotation to the endpoints before this api
   * is called.
   */
  annotateEndpoints<I, S>(tag: Context.Tag<I, S>, value: S): HttpApiGroup<Id, Endpoints, Error, R, TopLevel>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApiGroup.ts#L41)

Since v1.0.0