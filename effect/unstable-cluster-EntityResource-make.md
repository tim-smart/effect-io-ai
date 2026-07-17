Package: `effect`<br />
Module: `EntityResource`<br />

## EntityResource.make

Creates an `EntityResource` that can be acquired inside a cluster entity.

**When to use**

Use when a cluster entity should lazily share an acquired resource across
messages and release it only on idle timeout or explicit close.

**Details**

The resource will only be fully released when the idle time to live is
reached, or when the `close` effect is called.

**Gotchas**

By default, the `idleTimeToLive` is infinite, meaning the resource will only
be released when `close` is called.

**Signature**

```ts
declare const make: <A, E, R>(options: { readonly acquire: Effect.Effect<A, E, R>; readonly idleTimeToLive?: Duration.Input | undefined; readonly acquireEagerly?: boolean | undefined; }) => Effect.Effect<EntityResource<A, E>, E, Scope.Scope | Exclude<R, CloseScope> | Sharding | Entity.CurrentAddress>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EntityResource.ts#L98)

Since v4.0.0