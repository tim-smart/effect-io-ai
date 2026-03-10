Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchFilter

Recovers from specific errors using a `Filter`.

**Signature**

```ts
declare const catchFilter: { <E, EB, A2, E2, R2, X, A3 = never, E3 = X, R3 = never>(filter: Filter.Filter<NoInfer<E>, EB, X>, f: (e: EB) => Effect<A2, E2, R2>, orElse?: ((e: X) => Effect<A3, E3, R3>) | undefined): <A, R>(self: Effect<A, E, R>) => Effect<A | A2 | A3, E2 | E3, R | R2 | R3>; <A, E, R, EB, A2, E2, R2, X, A3 = never, E3 = X, R3 = never>(self: Effect<A, E, R>, filter: Filter.Filter<NoInfer<E>, EB, X>, f: (e: EB) => Effect<A2, E2, R2>, orElse?: ((e: X) => Effect<A3, E3, R3>) | undefined): Effect<A | A2 | A3, E2 | E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3367)

Since v4.0.0