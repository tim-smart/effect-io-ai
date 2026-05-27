Package: `effect`<br />
Module: `Pool`<br />

## Pool.makeWithStrategy

Creates a scoped pool using a custom resizing and reclamation strategy.

**When to use**

Use to build a pool whose item lifecycle is controlled by an explicit
`Strategy`, such as custom background resizing, replacement, or reclamation.

**Details**

The returned pool requires `Scope`; closing the scope shuts down the pool and
releases allocated items.

**See**

- `make` for fixed-size pools without custom resizing or reclamation
- `makeWithTTL` for min/max pools that shrink excess items with a TTL policy
- `Strategy` for the custom strategy contract consumed by this constructor

**Signature**

```ts
declare const makeWithStrategy: <A, E, R>(options: { readonly acquire: Effect.Effect<A, E, R>; readonly min: number; readonly max: number; readonly concurrency?: number | undefined; readonly targetUtilization?: number | undefined; readonly strategy: Strategy<A, E>; }) => Effect.Effect<Pool<A, E>, never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pool.ts#L358)

Since v4.0.0