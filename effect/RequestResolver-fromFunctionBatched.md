## fromFunctionBatched

Constructs a data source from a pure function that takes a list of requests
and returns a list of results of the same size. Each item in the result
list must correspond to the item at the same index in the request list.

**Signature**

```ts
declare const fromFunctionBatched: <A extends Request.Request<any>>(f: (chunk: NonEmptyArray<A>) => Iterable<Request.Request.Success<A>>) => RequestResolver<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L272)

Since v2.0.0