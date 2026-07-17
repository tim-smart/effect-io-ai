Package: `effect`<br />
Module: `Effect`<br />

## Effect.tapCauseFilter

Executes a side effect conditionally when a failed effect's cause passes a filter.

**When to use**

Use when you need to observe only failure causes selected by a `Filter`,
while giving the side effect both the selected value and the original
`Cause`.

**Details**

A successful filter result runs the side effect with the selected value and
original cause. A failed filter result skips the side effect and preserves the
original cause.

**See**

- `tapCauseIf` for selecting causes with a boolean predicate
- `tapCause` for observing every failure cause
- `catchCauseFilter` for recovering from selected causes instead of only observing them

**Signature**

```ts
declare const tapCauseFilter: { <E, B, E2, R2, EB, X extends Cause.Cause<any>>(filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (a: EB, cause: Cause.Cause<E>) => Effect<B, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A, E | E2, R | R2>; <A, E, R, B, E2, R2, EB, X extends Cause.Cause<any>>(self: Effect<A, E, R>, filter: Filter.Filter<Cause.Cause<E>, EB, X>, f: (a: EB, cause: Cause.Cause<E>) => Effect<B, E2, R2>): Effect<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3833)

Since v4.0.0