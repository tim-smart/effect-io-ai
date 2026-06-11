Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.withPermitsIfAvailable

Runs an effect only if the specified number of permits are immediately
available.

**When to use**

Use when guarded work should run only if the requested permits are
immediately available.

**Details**

When the permits are unavailable, the effect is not run and the result is
`Option.none`. When permits are available, the effect is run, its result is
wrapped in `Option.some`, and the acquired permits are released when the
effect exits.

**See**

- `withPermits` for the variant that waits until permits are available

**Signature**

```ts
declare const withPermitsIfAvailable: { (self: Semaphore, permits: number): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<Option.Option<A>, E, R>; <A, E, R>(self: Semaphore, permits: number, effect: Effect.Effect<A, E, R>): Effect.Effect<Option.Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L432)

Since v4.0.0