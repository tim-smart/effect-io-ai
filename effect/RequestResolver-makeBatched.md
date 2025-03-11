## makeBatched

Constructs a data source from a function taking a collection of requests.

**Signature**

```ts
declare const makeBatched: <A extends Request.Request<any, any>, R>(run: (requests: NonEmptyArray<A>) => Effect.Effect<void, never, R>) => RequestResolver<A, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L139)

Since v2.0.0