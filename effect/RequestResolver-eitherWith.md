# eitherWith

Returns a new data source that executes requests of type `C` using the
specified function to transform `C` requests into requests that either this
data source or that data source can execute.

To import and use `eitherWith` from the "RequestResolver" module:

ts
import \* as RequestResolver from "effect/RequestResolver"
// Can be accessed like this
RequestResolver.eitherWith
undefined

**Signature**

```ts
export declare const eitherWith: {
  <A extends Request.Request<any, any>, R2, B extends Request.Request<any, any>, C extends Request.Request<any, any>>(
    that: RequestResolver<B, R2>,
    f: (_: Request.Entry<C>) => Either.Either<Request.Entry<B>, Request.Entry<A>>
  ): <R>(self: RequestResolver<A, R>) => RequestResolver<C, R2 | R>
  <
    R,
    A extends Request.Request<any, any>,
    R2,
    B extends Request.Request<any, any>,
    C extends Request.Request<any, any>
  >(
    self: RequestResolver<A, R>,
    that: RequestResolver<B, R2>,
    f: (_: Request.Entry<C>) => Either.Either<Request.Entry<B>, Request.Entry<A>>
  ): RequestResolver<C, R | R2>
}
```
