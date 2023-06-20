# batchN

Returns a data source that executes at most `n` requests in parallel.

To import and use `batchN` from the "RequestResolver" module:

```ts
import * as RequestResolver from '@effect/io/RequestResolver'

// Can be accessed like this
RequestResolver.batchN
```

**Signature**

```ts
export declare const batchN: {
  (n: number): <R, A>(self: RequestResolver<A, R>) => RequestResolver<A, R>
  <R, A>(self: RequestResolver<A, R>, n: number): RequestResolver<A, R>
}
```
