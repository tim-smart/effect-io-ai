# fromFunctionBatched

Constructs a data source from a pure function that takes a list of requests
and returns a list of results of the same size. Each item in the result
list must correspond to the item at the same index in the request list.

Part of the `RequestResolver` module, imported from `@effect/io/RequestResolver`.

**Signature**

```ts
export declare const fromFunctionBatched: <A extends Request.Request<never, any>>(
  f: (chunk: A[]) => Request.Request.Success<A>[]
) => RequestResolver<A, never>
```
