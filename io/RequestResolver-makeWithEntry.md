# makeWithEntry

Constructs a data source with the specified identifier and method to run
requests.

To import and use `makeWithEntry` from the "RequestResolver" module:

```ts
import * as RequestResolver from '@effect/io/RequestResolver'

// Can be accessed like this
RequestResolver.makeWithEntry
```

**Signature**

```ts
export declare const makeWithEntry: <R, A>(
  runAll: (requests: Request.Entry<A>[][]) => Effect.Effect<R, never, void>
) => RequestResolver<A, R>
```
