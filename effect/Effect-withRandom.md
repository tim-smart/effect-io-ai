Package: `effect`<br />
Module: `Effect`<br />

## Effect.withRandom

Executes the specified effect with the specified implementation of the
`Random` service.

**Signature**

```ts
declare const withRandom: { <X extends Random.Random>(value: X): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>; <X extends Random.Random, A, E, R>(effect: Effect<A, E, R>, value: X): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11581)

Since v2.0.0