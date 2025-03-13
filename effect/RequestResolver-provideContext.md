Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.provideContext

Provides this data source with its required context.

**Signature**

```ts
declare const provideContext: { <R>(context: Context.Context<R>): <A extends Request.Request<any, any>>(self: RequestResolver<A, R>) => RequestResolver<A>; <R, A extends Request.Request<any, any>>(self: RequestResolver<A, R>, context: Context.Context<R>): RequestResolver<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L322)

Since v2.0.0