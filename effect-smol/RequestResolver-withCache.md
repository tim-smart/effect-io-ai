Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.withCache

Adds caching capabilities to a request resolver, allowing it to cache
results up to a specified capacity.

**Signature**

```ts
declare const withCache: { <A extends Request.Any>(options: { readonly capacity: number; readonly strategy?: "lru" | "fifo" | undefined; }): (self: RequestResolver<A>) => Effect.Effect<RequestResolver<A>>; <A extends Request.Any>(self: RequestResolver<A>, options: { readonly capacity: number; readonly strategy?: "lru" | "fifo" | undefined; }): Effect.Effect<RequestResolver<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L961)

Since v4.0.0