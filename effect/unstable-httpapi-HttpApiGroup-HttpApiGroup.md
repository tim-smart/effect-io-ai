Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.HttpApiGroup

An `HttpApiGroup` is a named collection of `HttpApiEndpoint`s that represents
a portion of your domain.

**Details**

Endpoint implementations can be provided later with `HttpApiBuilder.group`.

**Signature**

```ts
export interface HttpApiGroup<
  out Id extends string,
  in out Endpoints extends HttpApiEndpoint.Constraint = never,
  out TopLevel extends boolean = false
> extends Pipeable {
  new(_: never): {}
  readonly [TypeId]: typeof TypeId
  /**
   * Stable group identifier. This field intentionally is not named `name`
   * because `HttpApiGroup` values can be extended as classes, where `name`
   * would collide with JavaScript's built-in `Function.name`.
   */
  readonly identifier: Id
  readonly key: string
  readonly topLevel: TopLevel
  readonly endpoints: EndpointMap<Endpoints>
  readonly annotations: Context.Context<never>

  /**
   * Add an `HttpApiEndpoint` to an `HttpApiGroup`.
   */
  add<const A extends NonEmptyReadonlyArray<HttpApiEndpoint.Constraint>>(
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
   * Adds an `HttpApiMiddleware` to every endpoint currently in the group.
   *
   * **Gotchas**
   *
   * Endpoints added after this method is called do not have the middleware
   * applied.
   */
  middleware<I extends HttpApiMiddleware.AnyId, S>(middleware: Context.Key<I, S>): HttpApiGroup<
    Id,
    HttpApiEndpoint.AddMiddleware<Endpoints, I>,
    TopLevel
  >

  /**
   * Merge the annotations of an `HttpApiGroup` with the provided annotations.
   */
  annotateMerge<I>(annotations: Context.Context<I>): HttpApiGroup<Id, Endpoints, TopLevel>

  /**
   * Add an annotation to an `HttpApiGroup`.
   */
  annotate<I, S>(key: Context.Key<I, S>, value: S): HttpApiGroup<Id, Endpoints, TopLevel>

  /**
   * Merges the provided context into every endpoint currently in the group.
   *
   * **Gotchas**
   *
   * Endpoints added after this method is called do not have these annotations.
   */
  annotateEndpointsMerge<I>(annotations: Context.Context<I>): HttpApiGroup<Id, Endpoints, TopLevel>

  /**
   * Adds an annotation to every endpoint currently in the group.
   *
   * **Gotchas**
   *
   * Endpoints added after this method is called do not have this annotation.
   */
  annotateEndpoints<I, S>(key: Context.Key<I, S>, value: S): HttpApiGroup<Id, Endpoints, TopLevel>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiGroup.ts#L52)

Since v4.0.0