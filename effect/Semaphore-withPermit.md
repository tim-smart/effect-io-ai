Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.withPermit

Runs an effect with a single permit and releases the permit when the effect
completes.

**When to use**

Use to guard an effect with exactly one semaphore permit while automatically
releasing that permit when the effect exits.

**See**

- `withPermits` for acquiring more than one permit
- `withPermitsIfAvailable` for running only when permits are immediately available
- `take` for manually acquiring permits
- `release` for manually returning permits

**Signature**

```ts
declare const withPermit: { (self: Semaphore): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: Semaphore, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Semaphore.ts#L403)

Since v4.0.0