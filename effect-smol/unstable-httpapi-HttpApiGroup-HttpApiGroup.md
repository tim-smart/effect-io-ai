Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.HttpApiGroup

An `HttpApiGroup` is a collection of `HttpApiEndpoint`s. You can use an `HttpApiGroup` to
represent a portion of your domain.

The endpoints can be implemented later using the `HttpApiBuilder.group` api.

**Signature**

```ts
export interface HttpApiGroup<
  out Id extends string,
  out Endpoints extends HttpApiEndpoint.Any = never,
  out TopLevel extends boolean = false
> extends Pipeable {
  new(_: never): {}
  readonly [TypeId]: typeof TypeId
  readonly identifier: Id
  readonly key: string
  readonly topLevel: TopLevel
  readonly endpoints: Record.ReadonlyRecord<string, Endpoints>
  readonly annotations: ServiceMap.ServiceMap<never>

  /**
   * Add an `HttpApiEndpoint` to an `HttpApiGroup`.
   */
  add<A extends NonEmptyReadonlyArray<HttpApiEndpoint.Any>>(
    ...endpoints: A
  ): HttpApiGroup<Id, Endpoints | A[number], TopLevel>

  /**
   * Add a path prefix to all endpoints in an `HttpApiGroup`. Note that this will only
   * add the prefix to the endpoints before this api is called.
   */
  prefix<const Prefix extends PathInput>(
    prefix: Prefix
  ): HttpApiGroup<Id, HttpApiEndpoint.AddPrefix<Endpoints, Prefix>, TopLevel>

  /**
   * Add an `HttpApiMiddleware` to the `HttpApiGroup`.
   *
   * Endpoints added after this api is called **will not** have the middleware
   * applied.
   */
  middleware<I extends HttpApiMiddleware.AnyId, S>(middleware: ServiceMap.Key<I, S>): HttpApiGroup<
    Id,
    HttpApiEndpoint.AddMiddleware<Endpoints, I>,
    TopLevel
  >

  /**
   * Merge the annotations of an `HttpApiGroup` with the provided annotations.
   */
  annotateMerge<I>(annotations: ServiceMap.ServiceMap<I>): HttpApiGroup<Id, Endpoints, TopLevel>

  /**
   * Add an annotation to an `HttpApiGroup`.
   */
  annotate<I, S>(key: ServiceMap.Key<I, S>, value: S): HttpApiGroup<Id, Endpoints, TopLevel>

  /**
   * For each endpoint in an `HttpApiGroup`, update the annotations with a new
   * ServiceMap.
   *
   * Note that this will only update the annotations before this api is called.
   */
  annotateEndpointsMerge<I>(annotations: ServiceMap.ServiceMap<I>): HttpApiGroup<Id, Endpoints, TopLevel>

  /**
   * For each endpoint in an `HttpApiGroup`, add an annotation.
   *
   * Note that this will only add the annotation to the endpoints before this api
   * is called.
   */
  annotateEndpoints<I, S>(key: ServiceMap.Key<I, S>, value: S): HttpApiGroup<Id, Endpoints, TopLevel>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L30)

Since v4.0.0