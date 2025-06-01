Package: `effect`<br />
Module: `Effect`<br />

## Effect.flipWith

Swaps the error/value parameters, applies the function `f` and flips the
parameters back

**Signature**

```ts
declare const flipWith: { <E, A, R, E2, A2, R2>(f: (effect: Effect<E, A, R>) => Effect<E2, A2, R2>): (self: Effect<A, E, R>) => Effect<A2, E2, R2>; <A, E, R, E2, A2, R2>(self: Effect<A, E, R>, f: (effect: Effect<E, A, R>) => Effect<E2, A2, R2>): Effect<A2, E2, R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5120)

Since v2.0.0