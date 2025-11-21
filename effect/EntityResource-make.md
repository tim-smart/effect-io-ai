Package: `@effect/cluster`<br />
Module: `EntityResource`<br />

## EntityResource.make

A `EntityResource` is a resource that can be acquired inside a cluster
entity, which will keep the entity alive even across restarts.

The resource will only be fully released when the idle time to live is
reached, or when the `close` effect is called.

By default, the `idleTimeToLive` is infinite, meaning the resource will only
be released when `close` is called.

**Signature**

```ts
declare const make: <A, E, R>(options: { readonly acquire: Effect.Effect<A, E, R>; readonly idleTimeToLive?: Duration.DurationInput | undefined; readonly shutdownMode?: "explicit" | "always" | undefined; }) => Effect.Effect<EntityResource<A, E>, E, Scope.Scope | R | Sharding | Entity.CurrentAddress>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/EntityResource.ts#L47)

Since v1.0.0