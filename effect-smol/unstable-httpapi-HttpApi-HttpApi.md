Package: `effect`<br />
Module: `HttpApi`<br />

## HttpApi.HttpApi

An `HttpApi` is a collection of `HttpApiEndpoint`s. You can use an `HttpApi` to
represent a portion of your domain.

The endpoints can be implemented later using the `HttpApiBuilder.make` api.

**Signature**

```ts
export interface HttpApi<
  out Id extends string,
  out Groups extends HttpApiGroup.Any = never
> extends Pipeable {
  new(_: never): {}
  readonly [TypeId]: typeof TypeId
  readonly identifier: Id
  readonly groups: Record.ReadonlyRecord<string, Groups>
  readonly annotations: ServiceMap.ServiceMap<never>

  /**
   * Add a `HttpApiGroup` to the `HttpApi`.
   */
  add<A extends NonEmptyReadonlyArray<HttpApiGroup.Any>>(...groups: A): HttpApi<Id, Groups | A[number]>

  /**
   * Add another `HttpApi` to the `HttpApi`.
   */
  addHttpApi<Id2 extends string, Groups2 extends HttpApiGroup.Any>(
    api: HttpApi<Id2, Groups2>
  ): HttpApi<Id, Groups | Groups2>

  /**
   * Prefix all endpoints in the `HttpApi`.
   */
  prefix<const Prefix extends PathInput>(prefix: Prefix): HttpApi<Id, Groups>

  /**
   * Add a middleware to a `HttpApi`. It will be applied to all endpoints in the
   * `HttpApi`.
   *
   * Note that this will only add the middleware to the endpoints **before** this
   * api is called.
   */
  middleware<I extends HttpApiMiddleware.AnyId, S>(
    middleware: ServiceMap.Key<I, S>
  ): HttpApi<Id, HttpApiGroup.AddMiddleware<Groups, I>>

  /**
   * Annotate the `HttpApi`.
   */
  annotate<I, S>(tag: ServiceMap.Key<I, S>, value: S): HttpApi<Id, Groups>

  /**
   * Annotate the `HttpApi` with a ServiceMap.
   */
  annotateMerge<I>(context: ServiceMap.ServiceMap<I>): HttpApi<Id, Groups>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApi.ts#L35)

Since v4.0.0