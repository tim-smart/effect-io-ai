Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.withPermits

Runs an effect with the given number of permits and releases the permits when
the effect completes.

**Signature**

```ts
declare const withPermits: { (self: Semaphore, permits: number): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: Semaphore, permits: number, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L293)

Since v4.0.0