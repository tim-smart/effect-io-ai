# contramapContext

Provides this data source with part of its required context.

To import and use `contramapContext` from the "RequestResolver" module:

```ts
import * as RequestResolver from '@effect/io/RequestResolver'

// Can be accessed like this
RequestResolver.contramapContext
```

**Signature**

```ts
export declare const contramapContext: {
  <R0, R>(f: (context: Context.Context<R0>) => Context.Context<R>): <A extends Request.Request<any, any>>(
    self: RequestResolver<A, R>
  ) => RequestResolver<A, R0>
  <R, A extends Request.Request<any, any>, R0>(
    self: RequestResolver<A, R>,
    f: (context: Context.Context<R0>) => Context.Context<R>
  ): RequestResolver<A, R0>
}
```
