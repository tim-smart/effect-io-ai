# make

Constructs a data source with the specified identifier and method to run
requests.

To import and use `make` from the "RequestResolver" module:

```ts
import * as RequestResolver from "effect/RequestResolver"
// Can be accessed like this
RequestResolver.make
```

**Signature**

```ts
export declare const make: <R, A>(runAll: (requests: A[][]) => Effect.Effect<void, never, R>) => RequestResolver<A, R>
```
