Package: `effect`<br />
Module: `Effect`<br />

## Effect.summarized

Summarizes a effect by computing some value before and after execution, and
then combining the values to produce a summary, together with the result of
execution.

**Signature**

```ts
declare const summarized: { <B, E2, R2, C>(summary: Effect<B, E2, R2>, f: (start: B, end: B) => C): <A, E, R>(self: Effect<A, E, R>) => Effect<[C, A], E2 | E, R2 | R>; <A, E, R, B, E2, R2, C>(self: Effect<A, E, R>, summary: Effect<B, E2, R2>, f: (start: B, end: B) => C): Effect<[C, A], E2 | E, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L9451)

Since v2.0.0