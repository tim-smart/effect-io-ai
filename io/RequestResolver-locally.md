# locally

Returns a new data source with a localized FiberRef

To import and use `locally` from the "RequestResolver" module:

```ts
import * as RequestResolver from '@effect/io/RequestResolver'

// Can be accessed like this
RequestResolver.locally
```

**Signature**

```ts
export declare const locally: {
  <A>(self: FiberRef<A>, value: A): <R, B extends Request.Request<any, any>>(
    use: RequestResolver<B, R>
  ) => RequestResolver<B, R>
  <R, B extends Request.Request<any, any>, A>(use: RequestResolver<B, R>, self: FiberRef<A>, value: A): RequestResolver<
    B,
    R
  >
}
```
