# makeWithEntry

Constructs a data source with the specified identifier and method to run
requests.

To import and use `makeWithEntry` from the "RequestResolver" module:

```ts
import * as RequestResolver from "effect/RequestResolver"
// Can be accessed like this
RequestResolver.makeWithEntry
```

**Signature**

```ts
export declare const makeWithEntry: <A, R>(
  runAll: (requests: Array<Array<Request.Entry<A>>>) => Effect.Effect<void, never, R>
) => RequestResolver<A, R>
```
