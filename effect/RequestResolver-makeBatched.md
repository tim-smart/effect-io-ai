# makeBatched

Constructs a data source from a function taking a collection of requests
and returning a `RequestCompletionMap`.

To import and use `makeBatched` from the "RequestResolver" module:

```ts
import * as RequestResolver from "effect/RequestResolver"
// Can be accessed like this
RequestResolver.makeBatched
```

**Signature**

```ts
export declare const makeBatched: <R, A extends Request.Request<any, any>>(
  run: (requests: A[]) => Effect.Effect<R, never, void>
) => RequestResolver<A, R>
```
