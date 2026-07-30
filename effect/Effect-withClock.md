Package: `effect`<br />
Module: `Effect`<br />

## Effect.withClock

Executes the specified workflow with the specified implementation of the
`Clock` service.

**Signature**

```ts
declare const withClock: { <C extends Clock.Clock>(clock: C): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>; <C extends Clock.Clock, A, E, R>(effect: Effect<A, E, R>, clock: C): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6785)

Since v2.0.0