Package: `effect`<br />
Module: `Effect`<br />

## Effect.filterMapOrElse

Filters an effect with a `Filter`, providing an alternative effect on failure.

**When to use**

Use when a successful effect value should be accepted and transformed by a
`Filter`, while rejected values should continue with an alternative effect
built from the filter failure.

**Details**

`Result.succeed` becomes the returned success value, and `Result.fail` is
passed to `orElse`.

**See**

- `filterOrElse` for using a predicate and fallback effect
- `filterMapOrFail` for failing the effect when the filter fails

**Signature**

```ts
declare const filterMapOrElse: { <A, B, X, C, E2, R2>(filter: Filter.Filter<NoInfer<A>, B, X>, orElse: (x: X) => Effect<C, E2, R2>): <E, R>(self: Effect<A, E, R>) => Effect<B | C, E2 | E, R2 | R>; <A, E, R, B, X, C, E2, R2>(self: Effect<A, E, R>, filter: Filter.Filter<NoInfer<A>, B, X>, orElse: (x: X) => Effect<C, E2, R2>): Effect<B | C, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5096)

Since v4.0.0