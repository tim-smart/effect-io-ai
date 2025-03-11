## batchN

Returns a data source that executes at most `n` requests in parallel.

**Signature**

```ts
declare const batchN: { (n: number): <A, R>(self: RequestResolver<A, R>) => RequestResolver<A, R>; <A, R>(self: RequestResolver<A, R>, n: number): RequestResolver<A, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L207)

Since v2.0.0