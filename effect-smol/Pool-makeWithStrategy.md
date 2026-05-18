Package: `effect`<br />
Module: `Pool`<br />

## Pool.makeWithStrategy

Creates a scoped pool using a custom resizing and reclamation strategy.

**Details**

The returned pool requires `Scope`; closing the scope shuts down the pool and
releases allocated items. Use this constructor when `make` and `makeWithTTL`
do not provide the desired item lifecycle behavior.

**Signature**

```ts
declare const makeWithStrategy: <A, E, R>(options: { readonly acquire: Effect.Effect<A, E, R>; readonly min: number; readonly max: number; readonly concurrency?: number | undefined; readonly targetUtilization?: number | undefined; readonly strategy: Strategy<A, E>; }) => Effect.Effect<Pool<A, E>, never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pool.ts#L252)

Since v4.0.0