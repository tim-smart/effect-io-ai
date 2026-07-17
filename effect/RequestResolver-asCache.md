Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.asCache

Wraps a request resolver in a cache, allowing it to cache results up to a
specified capacity and optional time-to-live.

**When to use**

Use to turn a request resolver into a first-class `Cache` when callers need
cache lookup, refresh, invalidation, or inspection around request results.

**Details**

The request value is the cache key. Cache misses run the resolver via
`Effect.request`, `timeToLive` receives the request `Exit` and the request,
and `requireServicesAt` controls whether services are required at lookup time
or construction time.

**Gotchas**

Cache hits depend on the request value's equality semantics.

**See**

- `withCache` for keeping caching behind a resolver used with `Effect.request`
- `persisted` for storing persistable request results outside process memory
- `Cache.Cache` for operations available on the returned cache

**Signature**

```ts
declare const asCache: { <A extends Request.Any, ServiceMode extends "lookup" | "construction" = never>(options: { readonly capacity: number; readonly timeToLive?: ((exit: Request.Result<A>, request: A) => Duration.Input) | undefined; readonly requireServicesAt?: ServiceMode | undefined; }): (self: RequestResolver<A>) => Effect.Effect<Cache.Cache<A, Request.Success<A>, Request.Error<A>, "construction" extends ServiceMode ? never : Request.Services<A>>, never, "construction" extends ServiceMode ? Request.Services<A> : never>; <A extends Request.Any, ServiceMode extends "lookup" | "construction" = never>(self: RequestResolver<A>, options: { readonly capacity: number; readonly timeToLive?: ((exit: Request.Result<A>, request: A) => Duration.Input) | undefined; readonly requireServicesAt?: ServiceMode | undefined; }): Effect.Effect<Cache.Cache<A, Request.Success<A>, Request.Error<A>, "construction" extends ServiceMode ? never : Request.Services<A>>, never, "construction" extends ServiceMode ? Request.Services<A> : never>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L993)

Since v4.0.0