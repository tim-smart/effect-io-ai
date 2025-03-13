Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.mapInputContext

Provides this data source with part of its required context.

**Signature**

```ts
declare const mapInputContext: { <R0, R>(f: (context: Context.Context<R0>) => Context.Context<R>): <A extends Request.Request<any, any>>(self: RequestResolver<A, R>) => RequestResolver<A, R0>; <R, A extends Request.Request<any, any>, R0>(self: RequestResolver<A, R>, f: (context: Context.Context<R0>) => Context.Context<R>): RequestResolver<A, R0>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L218)

Since v2.0.0