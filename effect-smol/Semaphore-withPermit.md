Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.withPermit

Runs an effect with a single permit and releases the permit when the effect
completes.

**Signature**

```ts
declare const withPermit: { (self: Semaphore): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: Semaphore, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L306)

Since v4.0.0