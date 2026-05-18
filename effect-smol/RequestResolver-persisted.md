Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.persisted

Wraps a request resolver with persistent storage for persistable requests.

**Details**

Cached results are loaded from the configured persistence store before
running the underlying resolver. Missing entries, and entries marked stale by
`staleWhileRevalidate`, are resolved normally and written back to the store.

**Notes**

Creating the persisted resolver requires `Persistence.Persistence` and
`Scope`.

**Signature**

```ts
declare const persisted: { <A extends Request.Request<any, Persistence.PersistenceError | Schema.SchemaError, any> & Persistable.Any>(options: { readonly storeId: string; readonly timeToLive?: ((exit: Request.Result<A>, request: A) => Duration.Input) | undefined; readonly staleWhileRevalidate?: ((exit: Request.Result<A>, request: A) => boolean) | undefined; }): (self: RequestResolver<A>) => Effect.Effect<RequestResolver<A>, never, Persistence.Persistence | Scope>; <A extends Request.Request<any, Persistence.PersistenceError | Schema.SchemaError, any> & Persistable.Any>(self: RequestResolver<A>, options: { readonly storeId: string; readonly timeToLive?: ((exit: Request.Result<A>, request: A) => Duration.Input) | undefined; readonly staleWhileRevalidate?: ((exit: Request.Result<A>, request: A) => boolean) | undefined; }): Effect.Effect<RequestResolver<A>, never, Persistence.Persistence | Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L1115)

Since v4.0.0