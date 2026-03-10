Package: `effect`<br />
Module: `Effect`<br />

## Effect.matchCauseEffectEager

Eagerly handles success or failure with effectful handlers when the effect is already resolved.

If the effect is an `Exit`, the matching handler runs immediately; otherwise it behaves like
`matchCauseEffect`.

**Signature**

```ts
declare const matchCauseEffectEager: { <E, A2, E2, R2, A, A3, E3, R3>(options: { readonly onFailure: (cause: Cause.Cause<E>) => Effect<A2, E2, R2>; readonly onSuccess: (a: A) => Effect<A3, E3, R3>; }): <R>(self: Effect<A, E, R>) => Effect<A2 | A3, E2 | E3, R2 | R3 | R>; <A, E, R, A2, E2, R2, A3, E3, R3>(self: Effect<A, E, R>, options: { readonly onFailure: (cause: Cause.Cause<E>) => Effect<A2, E2, R2>; readonly onSuccess: (a: A) => Effect<A3, E3, R3>; }): Effect<A2 | A3, E2 | E3, R2 | R3 | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5318)

Since v4.0.0