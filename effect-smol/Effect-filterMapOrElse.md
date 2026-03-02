Package: `effect`<br />
Module: `Effect`<br />

## Effect.filterMapOrElse

Filters an effect with a `Filter`, providing an alternative effect on failure.

**Signature**

```ts
declare const filterMapOrElse: { <A, B, X, C, E2, R2>(filter: Filter.Filter<NoInfer<A>, B, X>, orElse: (x: X) => Effect<C, E2, R2>): <E, R>(self: Effect<A, E, R>) => Effect<B | C, E2 | E, R2 | R>; <A, E, R, B, X, C, E2, R2>(self: Effect<A, E, R>, filter: Filter.Filter<NoInfer<A>, B, X>, orElse: (x: X) => Effect<C, E2, R2>): Effect<B | C, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4882)

Since v4.0.0