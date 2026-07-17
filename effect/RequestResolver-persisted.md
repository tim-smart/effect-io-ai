Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.persisted

Wraps a request resolver with persistent storage for persistable requests.

**When to use**

Use to keep a `RequestResolver` interface while reusing completed
`Persistable` request results through a `Persistence` store.

**Details**

Cached results are loaded from the configured persistence store before
running the underlying resolver. Missing entries are resolved normally and
written back to the store. Entries marked stale by `staleWhileRevalidate`
receive the stored result and are also resolved again so the refreshed result
can be written back to the store. Creating the persisted resolver requires
`Persistence.Persistence` and `Scope`.

**See**

- `withCache` for in-memory resolver caching that does not require persistable request values or a persistence store
- `asCache` for exposing resolver results through a `Cache` instead of returning another resolver

**Signature**

```ts
declare const persisted: { <A extends Request.Request<any, Persistence.PersistenceError | Schema.SchemaError, any> & Persistable.Any>(options: { readonly storeId: string; readonly timeToLive?: ((exit: Request.Result<A>, request: A) => Duration.Input) | undefined; readonly staleWhileRevalidate?: ((exit: Request.Result<A>, request: A) => boolean) | undefined; }): (self: RequestResolver<A>) => Effect.Effect<RequestResolver<A>, never, Persistence.Persistence | Scope>; <A extends Request.Request<any, Persistence.PersistenceError | Schema.SchemaError, any> & Persistable.Any>(self: RequestResolver<A>, options: { readonly storeId: string; readonly timeToLive?: ((exit: Request.Result<A>, request: A) => Duration.Input) | undefined; readonly staleWhileRevalidate?: ((exit: Request.Result<A>, request: A) => boolean) | undefined; }): Effect.Effect<RequestResolver<A>, never, Persistence.Persistence | Scope>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestResolver.ts#L1165)

Since v4.0.0