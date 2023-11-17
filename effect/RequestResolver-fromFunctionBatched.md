# fromFunctionBatched

Constructs a data source from a pure function that takes a list of requests
and returns a list of results of the same size. Each item in the result
list must correspond to the item at the same index in the request list.

To import and use `fromFunctionBatched` from the "RequestResolver" module:

```ts
import * as RequestResolver from "effect/RequestResolver"
// Can be accessed like this
RequestResolver.fromFunctionBatched
```

**Signature**

```ts
export declare const fromFunctionBatched: <A extends Request.Request<never, any>>(
  f: (chunk: A[]) => Iterable<Request.Request.Success<A>>
) => RequestResolver<A, never>
```
