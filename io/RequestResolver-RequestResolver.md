# RequestResolver

A `RequestResolver<A, R>` requires an environment `R` and is capable of executing
requests of type `A`.

Data sources must implement the method `runAll` which takes a collection of
requests and returns an effect with a `RequestCompletionMap` containing a
mapping from requests to results. The type of the collection of requests is
a `Chunk<Chunk<A>>`. The outer `Chunk` represents batches of requests that
must be performed sequentially. The inner `Chunk` represents a batch of
requests that can be performed in parallel. This allows data sources to
introspect on all the requests being executed and optimize the query.

Data sources will typically be parameterized on a subtype of `Request<A>`,
though that is not strictly necessarily as long as the data source can map
the request type to a `Request<A>`. Data sources can then pattern match on
the collection of requests to determine the information requested, execute
the query, and place the results into the `RequestCompletionMap` using
`RequestCompletionMap.empty` and `RequestCompletionMap.insert`. Data
sources must provide results for all requests received. Failure to do so
will cause a query to die with a `QueryFailure` when run.

To import and use `RequestResolver` from the "RequestResolver" module:

```ts
import * as RequestResolver from '@effect/io/RequestResolver'

// Can be accessed like this
RequestResolver.RequestResolver
```
