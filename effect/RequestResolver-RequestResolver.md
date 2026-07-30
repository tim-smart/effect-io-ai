Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.RequestResolver

The `RequestResolver<A, R>` interface requires an environment `R` and handles
the execution of requests of type `A`.

Implementations must provide a `runAll` method, which processes a collection
of requests and produces an effect that fulfills these requests. Requests are
organized into a `Array<Array<A>>`, where the outer `Array` groups requests
into batches that are executed sequentially, and each inner `Array` contains
requests that can be executed in parallel. This structure allows
implementations to analyze all incoming requests collectively and optimize
query execution accordingly.

Implementations are typically specialized for a subtype of `Request<A, E>`.
However, they are not strictly limited to these subtypes as long as they can
map any given request type to `Request<A, E>`. Implementations should inspect
the collection of requests to identify the needed information and execute the
corresponding queries. It is imperative that implementations resolve all the
requests they receive. Failing to do so will lead to a `QueryFailure` error
during query execution.

**Signature**

```ts
export interface RequestResolver<in A, out R = never> extends RequestResolver.Variance<A, R>, Equal.Equal, Pipeable {
  /**
   * Execute a collection of requests. The outer `Array` represents batches
   * of requests that must be performed sequentially. The inner `Array`
   * represents a batch of requests that can be performed in parallel.
   */
  runAll(requests: Array<Array<Request.Entry<A>>>): Effect.Effect<void, never, R>

  /**
   * Identify the data source using the specific identifier
   */
  identified(...identifiers: Array<unknown>): RequestResolver<A, R>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L52)

Since v2.0.0