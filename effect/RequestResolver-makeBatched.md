# makeBatched

Constructs a data source from a function taking a collection of requests.

To import and use `makeBatched` from the "RequestResolver" module:

ts
import \* as RequestResolver from "effect/RequestResolver"
// Can be accessed like this
RequestResolver.makeBatched
undefined

**Signature**

```ts
export declare const makeBatched: <A extends Request.Request<any, any>, R>(
  run: (requests: NonEmptyArray<A>) => Effect.Effect<void, never, R>
) => RequestResolver<A, R>
```
