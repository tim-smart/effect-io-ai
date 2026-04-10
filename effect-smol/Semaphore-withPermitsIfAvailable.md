Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.withPermitsIfAvailable

Runs an effect only if the specified number of permits are immediately
available.

**Signature**

```ts
declare const withPermitsIfAvailable: { (self: Semaphore, permits: number): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<Option.Option<A>, E, R>; <A, E, R>(self: Semaphore, permits: number, effect: Effect.Effect<A, E, R>): Effect.Effect<Option.Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L321)

Since v4.0.0