# batchN

Returns a data source that executes at most `n` requests in parallel.

Part of the `RequestResolver` module, imported from `@effect/io/RequestResolver`.

**Signature**

```ts
export declare const batchN: {
  (n: number): <R, A>(self: RequestResolver<A, R>) => RequestResolver<A, R>
  <R, A>(self: RequestResolver<A, R>, n: number): RequestResolver<A, R>
}
```
