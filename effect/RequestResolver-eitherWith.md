Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.eitherWith

Returns a new data source that executes requests of type `C` using the
specified function to transform `C` requests into requests that either this
data source or that data source can execute.

**Signature**

```ts
declare const eitherWith: { <A extends Request.Request<any, any>, R2, B extends Request.Request<any, any>, C extends Request.Request<any, any>>(that: RequestResolver<B, R2>, f: (_: Request.Entry<C>) => Either.Either<Request.Entry<B>, Request.Entry<A>>): <R>(self: RequestResolver<A, R>) => RequestResolver<C, R2 | R>; <R, A extends Request.Request<any, any>, R2, B extends Request.Request<any, any>, C extends Request.Request<any, any>>(self: RequestResolver<A, R>, that: RequestResolver<B, R2>, f: (_: Request.Entry<C>) => Either.Either<Request.Entry<B>, Request.Entry<A>>): RequestResolver<C, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L236)

Since v2.0.0