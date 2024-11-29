# RequestResolver

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

To import and use `RequestResolver` from the "RequestResolver" module:

ts
import \* as RequestResolver from "effect/RequestResolver"
// Can be accessed like this
RequestResolver.RequestResolver
undefined
