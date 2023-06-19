# makeBatched

Constructs a data source from a function taking a collection of requests
and returning a `RequestCompletionMap`.

Part of the `RequestResolver` module, imported from `@effect/io/RequestResolver`.

**Signature**

```ts
export declare const makeBatched: <R, A extends Request.Request<any, any>>(
  run: (requests: A[]) => Effect.Effect<R, never, void>
) => RequestResolver<A, R>
```
