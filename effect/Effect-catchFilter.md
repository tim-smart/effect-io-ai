Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchFilter

Recovers from specific errors using a `Filter`.

**When to use**

Use to recover from typed `Effect` errors with a reusable `Filter` when
matching can also narrow or transform the error before choosing the recovery
effect.

**Details**

The filter runs on typed failures extracted from the `Cause`. Successful
filter results are passed to `f`; failed filter results are passed to
`orElse` when provided. Without `orElse`, the original failure cause is
preserved.

**See**

- `catchIf` for predicate-based recovery from typed errors
- `catchTag` for recovering from a single tagged error
- `catchTags` for recovering from several tagged errors
- `catchCauseFilter` for filtering full causes instead of typed errors

**Signature**

```ts
declare const catchFilter: { <E, EB, A2, E2, R2, X, A3 = unassigned, E3 = never, R3 = never>(filter: Filter.Filter<NoInfer<E>, EB, X>, f: (e: EB) => Effect<A2, E2, R2>, orElse?: ((e: X) => Effect<A3, E3, R3>) | undefined): <A, R>(self: Effect<A, E, R>) => Effect<A | A2 | Exclude<A3, unassigned>, E2 | E3 | (A3 extends unassigned ? X : never), R | R2 | R3>; <A, E, R, EB, A2, E2, R2, X, A3 = unassigned, E3 = never, R3 = never>(self: Effect<A, E, R>, filter: Filter.Filter<NoInfer<E>, EB, X>, f: (e: EB) => Effect<A2, E2, R2>, orElse?: ((e: X) => Effect<A3, E3, R3>) | undefined): Effect<A | A2 | Exclude<A3, unassigned>, E2 | E3 | (A3 extends unassigned ? X : never), R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3354)

Since v4.0.0