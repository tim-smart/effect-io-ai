# batchN

Returns a data source that executes at most `n` requests in parallel.

To import and use `batchN` from the "RequestResolver" module:

ts
import \* as RequestResolver from "effect/RequestResolver"
// Can be accessed like this
RequestResolver.batchN
undefined

**Signature**

```ts
export declare const batchN: {
  (n: number): <A, R>(self: RequestResolver<A, R>) => RequestResolver<A, R>
  <A, R>(self: RequestResolver<A, R>, n: number): RequestResolver<A, R>
}
```
