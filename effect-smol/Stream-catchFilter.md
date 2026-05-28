Package: `effect`<br />
Module: `Stream`<br />

## Stream.catchFilter

Recovers from errors that match a `Filter` by switching to a recovery
stream.

**When to use**

Use to recover from stream errors with a reusable `Filter` when matching can
also narrow or transform the error before choosing the recovery stream.

**Details**

Successful filter results are passed to `f`. Failed filter results go to
`orElse` when provided; otherwise the filter failure is re-failed.

**See**

- `catchIf` for predicate or refinement based recovery
- `catchTag` for `_tag` based recovery from one tagged error
- `catchTags` for `_tag` based recovery from multiple tagged errors
- `catchCauseFilter` for filtering full causes

**Signature**

```ts
declare const catchFilter: { <E, EB, A2, E2, R2, X, A3 = unassigned, E3 = never, R3 = never>(filter: Filter.Filter<NoInfer<E>, EB, X>, f: (failure: EB) => Stream<A2, E2, R2>, orElse?: ((failure: X) => Stream<A3, E3, R3>) | undefined): <A, R>(self: Stream<A, E, R>) => Stream<A | A2 | Exclude<A3, unassigned>, E2 | E3 | (A3 extends unassigned ? X : never), R | R2 | R3>; <A, E, R, EB, A2, E2, R2, X, A3 = unassigned, E3 = never, R3 = never>(self: Stream<A, E, R>, filter: Filter.Filter<NoInfer<E>, EB, X>, f: (failure: EB) => Stream<A2, E2, R2>, orElse?: ((failure: X) => Stream<A3, E3, R3>) | undefined): Stream<A | A2 | Exclude<A3, unassigned>, E2 | E3 | (A3 extends unassigned ? X : never), R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5207)

Since v4.0.0