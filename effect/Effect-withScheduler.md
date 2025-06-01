Package: `effect`<br />
Module: `Effect`<br />

## Effect.withScheduler

Sets the provided scheduler for usage in the wrapped effect

**Signature**

```ts
declare const withScheduler: { (scheduler: Scheduler.Scheduler): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(self: Effect<A, E, R>, scheduler: Scheduler.Scheduler): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6698)

Since v2.0.0