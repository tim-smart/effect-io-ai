Package: `effect`<br />
Module: `Effect`<br />

## Effect.filterMapOrFail

Filters an effect with a `Filter`, failing when the filter fails.

**Signature**

```ts
declare const filterMapOrFail: { <A, B, X, E2>(filter: Filter.Filter<NoInfer<A>, B, X>, orFailWith: (x: X) => E2): <E, R>(self: Effect<A, E, R>) => Effect<B, E2 | E, R>; <A, B, X>(filter: Filter.Filter<NoInfer<A>, B, X>): <E, R>(self: Effect<A, E, R>) => Effect<B, Cause.NoSuchElementError | E, R>; <A, E, R, B, X, E2>(self: Effect<A, E, R>, filter: Filter.Filter<A, B, X>, orFailWith: (x: X) => E2): Effect<B, E2 | E, R>; <A, E, R, B, X>(self: Effect<A, E, R>, filter: Filter.Filter<A, B, X>): Effect<B, Cause.NoSuchElementError | E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4980)

Since v4.0.0