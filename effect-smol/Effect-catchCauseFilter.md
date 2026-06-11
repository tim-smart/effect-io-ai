Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchCauseFilter

Recovers from specific failures based on a `Filter`.

**When to use**

Use when you need to recover an `Effect` only from causes selected by a
`Filter`, while giving the recovery both the selected value and the original
`Cause`.

**Details**

The filter is applied to the full `Cause`. When it succeeds, the handler
receives the selected value and the original cause. When it fails, the effect
re-fails with the residual cause returned by the filter.

**See**

- `catchCauseIf` for predicate-based cause selection
- `catchFilter` for filtering typed error values instead of full causes
- `catchCause` for recovering from every cause without filtering

**Signature**

```ts
declare const catchCauseFilter: { <E, B, E2, R2, EB, X extends Cause.Cause<any>>(filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (failure: EB, cause: Cause.Cause<E>) => Effect<B, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A | B, Cause.Cause.Error<X> | E2, R | R2>; <A, E, R, B, E2, R2, EB, X extends Cause.Cause<any>>(self: Effect<A, E, R>, filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (failure: EB, cause: Cause.Cause<E>) => Effect<B, E2, R2>): Effect<A | B, Cause.Cause.Error<X> | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3433)

Since v4.0.0