Package: `effect`<br />
Module: `Effect`<br />

## Effect.filterMapOrFail

Filters and maps an effect with a `Filter`, failing when the filter fails.

**When to use**

Use when validating and transforming one effect success with a synchronous
`Filter`, while rejected values should fail the effect.

**Details**

`Result.succeed` becomes the returned success value. `Result.fail` is mapped
with `orFailWith` when provided, or fails with `NoSuchElementError`.

**See**

- `filterMapOrElse` for continuing with a fallback effect when the filter fails
- `filterOrFail` for validating with a predicate instead of a `Filter`
- `filterMap` for filtering and mapping iterable elements

**Signature**

```ts
declare const filterMapOrFail: { <A, B, X, E2>(filter: Filter.Filter<NoInfer<A>, B, X>, orFailWith: (x: X) => E2): <E, R>(self: Effect<A, E, R>) => Effect<B, E2 | E, R>; <A, B, X>(filter: Filter.Filter<NoInfer<A>, B, X>): <E, R>(self: Effect<A, E, R>) => Effect<B, Cause.NoSuchElementError | E, R>; <A, E, R, B, X, E2>(self: Effect<A, E, R>, filter: Filter.Filter<A, B, X>, orFailWith: (x: X) => E2): Effect<B, E2 | E, R>; <A, E, R, B, X>(self: Effect<A, E, R>, filter: Filter.Filter<A, B, X>): Effect<B, Cause.NoSuchElementError | E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5193)

Since v4.0.0