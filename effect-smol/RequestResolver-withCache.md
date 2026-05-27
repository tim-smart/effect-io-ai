Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.withCache

Adds a bounded in-memory cache to a request resolver.

**When to use**

Use to reuse completed results for repeated equal request values while still
passing a `RequestResolver` to `Effect.request`.

**Details**

Running the returned effect creates the cache and returns a wrapped resolver.
The cache stores completed success or failure results by request equality up
to `capacity`. The `strategy` option controls eviction order and defaults to
`"lru"`; `"fifo"` keeps insertion order.

**Gotchas**

Entries do not expire by time, and completed failures are cached the same as
successes. Request equality controls cache hits.

**See**

- `asCache` for exposing the resolver as a `Cache` with time-to-live and service lookup controls
- `persisted` for backing persistable requests with the configured persistence store

**Signature**

```ts
declare const withCache: { <A extends Request.Any>(options: { readonly capacity: number; readonly strategy?: "lru" | "fifo" | undefined; }): (self: RequestResolver<A>) => Effect.Effect<RequestResolver<A>>; <A extends Request.Any>(self: RequestResolver<A>, options: { readonly capacity: number; readonly strategy?: "lru" | "fifo" | undefined; }): Effect.Effect<RequestResolver<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L1113)

Since v4.0.0