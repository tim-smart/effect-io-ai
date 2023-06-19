# provideContext

Provides this data source with its required context.

Part of the `RequestResolver` module, imported from `@effect/io/RequestResolver`.

**Signature**

```ts
export declare const provideContext: {
  <R>(context: Context.Context<R>): <A extends Request.Request<any, any>>(
    self: RequestResolver<A, R>
  ) => RequestResolver<A, never>
  <R, A extends Request.Request<any, any>>(self: RequestResolver<A, R>, context: Context.Context<R>): RequestResolver<
    A,
    never
  >
}
```
