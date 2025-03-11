## locally

Returns a new data source with a localized FiberRef

**Signature**

```ts
declare const locally: { <A>(self: FiberRef<A>, value: A): <R, B extends Request.Request<any, any>>(use: RequestResolver<B, R>) => RequestResolver<B, R>; <R, B extends Request.Request<any, any>, A>(use: RequestResolver<B, R>, self: FiberRef<A>, value: A): RequestResolver<B, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L356)

Since v2.0.0