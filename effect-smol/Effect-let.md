Package: `effect`<br />
Module: `Effect`<br />

## Effect.let

Adds a computed plain value to the do notation record.

**Signature**

```ts
declare const let: { <N extends string, A extends Record<string, any>, B>(name: N, f: (a: NoInfer<A>) => B): <E, R>(self: Effect<A, E, R>) => Effect<Simplify<Omit<A, N> & Record<N, B>>, E, R>; <A extends Record<string, any>, E, R, B, N extends string>(self: Effect<A, E, R>, name: N, f: (a: NoInfer<A>) => B): Effect<Simplify<Omit<A, N> & Record<N, B>>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1501)

Since v4.0.0