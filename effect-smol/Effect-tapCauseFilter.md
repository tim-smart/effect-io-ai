Package: `effect`<br />
Module: `Effect`<br />

## Effect.tapCauseFilter

Conditionally executes a side effect based on the cause of a failed effect.

**Signature**

```ts
declare const tapCauseFilter: { <E, B, E2, R2, EB, X extends Cause.Cause<any>>(filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (a: EB, cause: Cause.Cause<E>) => Effect<B, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A, E | E2, R | R2>; <A, E, R, B, E2, R2, EB, X extends Cause.Cause<any>>(self: Effect<A, E, R>, filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (a: EB, cause: Cause.Cause<E>) => Effect<B, E2, R2>): Effect<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3775)

Since v4.0.0