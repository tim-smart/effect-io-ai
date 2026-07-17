Package: `effect`<br />
Module: `HttpApi`<br />

## HttpApi.HttpApi

An `HttpApi` is a collection of HTTP API groups and endpoints that represents a
portion of your domain.

**When to use**

Use when endpoint implementations can be provided with `HttpApiBuilder.group`, and the
completed API can be registered with `HttpApiBuilder.layer`.

**Signature**

```ts
export interface HttpApi<
  out Id extends string,
  in out Groups extends HttpApiGroup.Constraint = never
> extends Pipeable {
  new(_: never): {}
  readonly [TypeId]: typeof TypeId
  readonly identifier: Id
  readonly groups: GroupMap<Groups>
  readonly annotations: Context.Context<never>

  /**
   * Add a `HttpApiGroup` to the `HttpApi`.
   */
  add<const A extends NonEmptyReadonlyArray<HttpApiGroup.Constraint>>(...groups: A): HttpApi<Id, Groups | A[number]>

  /**
   * Adds every group from another `HttpApi` while preserving its annotation scope.
   *
   * **When to use**
   *
   * Use when you want to compose an API from groups declared and annotated under another API.
   *
   * **Details**
   *
   * The added API is flattened into this API rather than retained as a nested value. Each added group
   * is copied with the added API's annotations, leaving the added API unchanged. Annotation precedence
   * from least to most specific is this API, the added API, the group, and then the endpoint.
   *
   * **Gotchas**
   *
   * Annotations from the added API do not become top-level annotations of the result and do not affect
   * groups already present in this API. They remain scoped to the groups and endpoints being added.
   */
  addHttpApi<Id2 extends string, Groups2 extends HttpApiGroup.Constraint>(
    api: HttpApi<Id2, Groups2>
  ): HttpApi<Id, Groups | Groups2>

  /**
   * Prefix all endpoints in the `HttpApi`.
   */
  prefix<const Prefix extends PathInput>(prefix: Prefix): HttpApi<Id, HttpApiGroup.AddPrefix<Groups, Prefix>>

  /**
   * Adds a middleware to every endpoint currently in the `HttpApi`.
   *
   * **Gotchas**
   *
   * Endpoints added after this method is called do not receive the middleware.
   */
  middleware<I extends HttpApiMiddleware.AnyId, S>(
    middleware: Context.Key<I, S>
  ): HttpApi<Id, HttpApiGroup.AddMiddleware<Groups, I>>

  /**
   * Annotate the `HttpApi`.
   */
  annotate<I, S>(tag: Context.Key<I, S>, value: S): HttpApi<Id, Groups>

  /**
   * Annotate the `HttpApi` with a Context.
   */
  annotateMerge<I>(context: Context.Context<I>): HttpApi<Id, Groups>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApi.ts#L54)

Since v4.0.0