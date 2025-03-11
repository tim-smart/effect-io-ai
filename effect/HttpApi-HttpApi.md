## HttpApi

An `HttpApi` is a collection of `HttpApiEndpoint`s. You can use an `HttpApi` to
represent a portion of your domain.

The endpoints can be implemented later using the `HttpApiBuilder.make` api.

**Signature**

```ts
export interface HttpApi<
  out Id extends string,
  out Groups extends HttpApiGroup.HttpApiGroup.Any = never,
  in out E = never,
  out R = never
> extends Pipeable {
  new(_: never): {}
  readonly [TypeId]: TypeId
  readonly identifier: Id
  readonly groups: Record.ReadonlyRecord<string, Groups>
  readonly annotations: Context.Context<never>
  readonly errorSchema: Schema.Schema<E, unknown, R>
  readonly middlewares: ReadonlySet<HttpApiMiddleware.TagClassAny>

  /**
   * Add a `HttpApiGroup` to the `HttpApi`.
   */
  add<A extends HttpApiGroup.HttpApiGroup.Any>(group: A): HttpApi<Id, Groups | A, E, R>
  /**
   * Add another `HttpApi` to the `HttpApi`.
   */
  addHttpApi<Id2 extends string, Groups2 extends HttpApiGroup.HttpApiGroup.Any, E2, R2>(
    api: HttpApi<Id2, Groups2, E2, R2>
  ): HttpApi<
    Id,
    Groups | HttpApiGroup.HttpApiGroup.AddContext<Groups2, R2>,
    E | E2,
    R
  >
  /**
   * Add an global error to the `HttpApi`.
   */
  addError<A, I, RX>(
    schema: Schema.Schema<A, I, RX>,
    annotations?: {
      readonly status?: number | undefined
    }
  ): HttpApi<Id, Groups, E | A, R | RX>
  /**
   * Prefix all endpoints in the `HttpApi`.
   */
  prefix(prefix: HttpApiEndpoint.PathSegment): HttpApi<Id, Groups, E, R>
  /**
   * Add a middleware to a `HttpApi`. It will be applied to all endpoints in the
   * `HttpApi`.
   */
  middleware<I extends HttpApiMiddleware.HttpApiMiddleware.AnyId, S>(
    middleware: Context.Tag<I, S>
  ): HttpApi<
    Id,
    Groups,
    E | HttpApiMiddleware.HttpApiMiddleware.Error<I>,
    R | I | HttpApiMiddleware.HttpApiMiddleware.ErrorContext<I>
  >
  /**
   * Annotate the `HttpApi`.
   */
  annotate<I, S>(tag: Context.Tag<I, S>, value: S): HttpApi<Id, Groups, E, R>
  /**
   * Annotate the `HttpApi` with a Context.
   */
  annotateContext<I>(context: Context.Context<I>): HttpApi<Id, Groups, E, R>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApi.ts#L46)

Since v1.0.0