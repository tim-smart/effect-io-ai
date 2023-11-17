# provideContext

Provides this data source with its required context.

To import and use `provideContext` from the "RequestResolver" module:

```ts
import * as RequestResolver from "effect/RequestResolver"
// Can be accessed like this
RequestResolver.provideContext
```

**Signature**

```ts
export declare const provideContext: {
  <R>(
    context: Context.Context<R>
  ): <A extends Request.Request<any, any>>(self: RequestResolver<A, R>) => RequestResolver<A, never>
  <R, A extends Request.Request<any, any>>(
    self: RequestResolver<A, R>,
    context: Context.Context<R>
  ): RequestResolver<A, never>
}
```
