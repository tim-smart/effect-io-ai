Package: `effect`<br />
Module: `Effect`<br />

## Effect.Retry.Return

Computes the result type of `Effect.retry` from the original effect and retry options.

**Signature**

```ts
type Effect<A, (O extends { schedule: Schedule<infer _O, infer _I, infer _E1, infer _R>; } ? E : O extends { times: number; } ? E : O extends { until: Predicate.Refinement<E, infer E2>; } ? E2 : O extends { while: Predicate.Refinement<E, infer E2>; } ? Exclude<E, E2> : E) | (O extends { schedule: Schedule<infer _O, infer _I, infer E, infer _R>; } ? E : never) | (O extends { while: (...args: Array<any>) => Effect<infer _A, infer E, infer _R>; } ? E : never) | (O extends { until: (...args: Array<any>) => Effect<infer _A, infer E, infer _R>; } ? E : never), R | (O extends { schedule: Schedule<infer _O, infer _I, infer _E1, infer R>; } ? R : never) | (O extends { while: (...args: Array<any>) => Effect<infer _A, infer _E, infer R>; } ? R : never) | (O extends { until: (...args: Array<any>) => Effect<infer _A, infer _E, infer R>; } ? R : never)> = Effect<
    A,
    | (O extends { schedule: Schedule<infer _O, infer _I, infer _E1, infer _R> } ? E
      : O extends { times: number } ? E
      : O extends { until: Predicate.Refinement<E, infer E2> } ? E2
      : O extends { while: Predicate.Refinement<E, infer E2> } ? Exclude<E, E2>
      : E)
    | (O extends { schedule: Schedule<infer _O, infer _I, infer E, infer _R> } ? E
      : never)
    | (O extends { while: (...args: Array<any>) => Effect<infer _A, infer E, infer _R> } ? E
      : never)
    | (O extends { until: (...args: Array<any>) => Effect<infer _A, infer E, infer _R> } ? E
      : never),
    | R
    | (O extends { schedule: Schedule<infer _O, infer _I, infer _E1, infer R> } ? R
      : never)
    | (O extends { while: (...args: Array<any>) => Effect<infer _A, infer _E, infer R> } ? R
      : never)
    | (O extends { until: (...args: Array<any>) => Effect<infer _A, infer _E, infer R> } ? R
      : never)
  > extends infer Z ? Z
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3947)

Since v2.0.0