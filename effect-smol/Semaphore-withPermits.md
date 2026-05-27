Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.withPermits

Runs an effect with the given number of permits and releases the permits when
the effect completes.

**When to use**

Use to run an effect while holding a specified number of semaphore permits
for the duration of that effect.

**Details**

The effect waits until enough permits are available. Acquired permits are
released when the wrapped effect exits.

**See**

- `withPermit` for acquiring exactly one permit
- `withPermitsIfAvailable` for running only when permits are immediately available
- `take` for manually acquiring permits
- `release` for manually returning permits

**Signature**

```ts
declare const withPermits: { (self: Semaphore, permits: number): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: Semaphore, permits: number, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L400)

Since v4.0.0