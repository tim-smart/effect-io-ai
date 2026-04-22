Package: `effect`<br />
Module: `Effect`<br />

## Effect.bind

Adds an `Effect` value to the do notation record under a given name.

**Signature**

```ts
declare const bind: { <N extends string, A extends Record<string, any>, B, E2, R2>(name: N, f: (a: NoInfer<A>) => Effect<B, E2, R2>): <E, R>(self: Effect<A, E, R>) => Effect<Simplify<Omit<A, N> & Record<N, B>>, E | E2, R | R2>; <A extends Record<string, any>, E, R, B, E2, R2, N extends string>(self: Effect<A, E, R>, name: N, f: (a: NoInfer<A>) => Effect<B, E2, R2>): Effect<Simplify<Omit<A, N> & Record<N, B>>, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1503)

Since v4.0.0