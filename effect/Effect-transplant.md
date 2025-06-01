Package: `effect`<br />
Module: `Effect`<br />

## Effect.transplant

Transplants specified effects so that when those effects fork other
effects, the forked effects will be governed by the scope of the fiber that
executes this effect.

This can be used to "graft" deep grandchildren onto a higher-level scope,
effectively extending their lifespans into the parent scope.

**Signature**

```ts
declare const transplant: <A, E, R>(f: (grafter: <A2, E2, R2>(effect: Effect<A2, E2, R2>) => Effect<A2, E2, R2>) => Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6679)

Since v2.0.0