Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchCauseFilter

Recovers from specific failures based on a `Filter`.

**Signature**

```ts
declare const catchCauseFilter: { <E, B, E2, R2, EB, X extends Cause.Cause<any>>(filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (failure: EB, cause: Cause.Cause<E>) => Effect<B, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A | B, Cause.Cause.Error<X> | E2, R | R2>; <A, E, R, B, E2, R2, EB, X extends Cause.Cause<any>>(self: Effect<A, E, R>, filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (failure: EB, cause: Cause.Cause<E>) => Effect<B, E2, R2>): Effect<A | B, Cause.Cause.Error<X> | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3364)

Since v4.0.0