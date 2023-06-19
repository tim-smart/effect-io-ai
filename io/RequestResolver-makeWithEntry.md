# makeWithEntry

Constructs a data source with the specified identifier and method to run
requests.

Part of the `RequestResolver` module, imported from `@effect/io/RequestResolver`.

**Signature**

```ts
export declare const makeWithEntry: <R, A>(
  runAll: (requests: Request.Entry<A>[][]) => Effect.Effect<R, never, void>
) => RequestResolver<A, R>
```
