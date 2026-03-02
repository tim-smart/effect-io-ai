Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.asCache

Wraps a request resolver in a cache, allowing it to cache results up to a
specified capacity and optional time-to-live.

**Signature**

```ts
declare const asCache: { <A extends Request.Any, ServiceMode extends "lookup" | "construction" = never>(options: { readonly capacity: number; readonly timeToLive?: ((exit: Request.Result<A>, request: A) => Duration.Input) | undefined; readonly requireServicesAt?: ServiceMode | undefined; }): (self: RequestResolver<A>) => Effect.Effect<Cache.Cache<A, Request.Success<A>, Request.Error<A>, "construction" extends ServiceMode ? never : Request.Services<A>>, never, "construction" extends ServiceMode ? Request.Services<A> : never>; <A extends Request.Any, ServiceMode extends "lookup" | "construction" = never>(self: RequestResolver<A>, options: { readonly capacity: number; readonly timeToLive?: ((exit: Request.Result<A>, request: A) => Duration.Input) | undefined; readonly requireServicesAt?: ServiceMode | undefined; }): Effect.Effect<Cache.Cache<A, Request.Success<A>, Request.Error<A>, "construction" extends ServiceMode ? never : Request.Services<A>>, never, "construction" extends ServiceMode ? Request.Services<A> : never>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L896)

Since v4.0.0