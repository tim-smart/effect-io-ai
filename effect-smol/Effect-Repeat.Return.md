Package: `effect`<br />
Module: `Effect`<br />

## Effect.Repeat.Return

Computes the result type of `Effect.repeat` from the original effect and repeat options.

**Signature**

```ts
type Effect<O extends { until: Predicate.Refinement<A, infer B>; } ? B : O extends { while: Predicate.Refinement<A, infer B>; } ? Exclude<A, B> : A, E | (O extends { schedule: Schedule<infer _Out, infer _I, infer E, infer _R>; } ? E : never) | (O extends { while: (...args: Array<any>) => Effect<infer _A, infer E, infer _R>; } ? E : never) | (O extends { until: (...args: Array<any>) => Effect<infer _A, infer E, infer _R>; } ? E : never), R | (O extends { schedule: Schedule<infer _O, infer _I, infer _E, infer R>; } ? R : never) | (O extends { while: (...args: Array<any>) => Effect<infer _A, infer _E, infer R>; } ? R : never) | (O extends { until: (...args: Array<any>) => Effect<infer _A, infer _E, infer R>; } ? R : never)> = Effect<
    O extends { until: Predicate.Refinement<A, infer B> } ? B
      : O extends { while: Predicate.Refinement<A, infer B> } ? Exclude<A, B>
      : A,
    | E
    | (O extends { schedule: Schedule<infer _Out, infer _I, infer E, infer _R> } ? E
      : never)
    | (O extends { while: (...args: Array<any>) => Effect<infer _A, infer E, infer _R> } ? E
      : never)
    | (O extends { until: (...args: Array<any>) => Effect<infer _A, infer E, infer _R> } ? E
      : never),
    | R
    | (O extends { schedule: Schedule<infer _O, infer _I, infer _E, infer R> } ? R
      : never)
    | (O extends {
      while: (...args: Array<any>) => Effect<infer _A, infer _E, infer R>
    } ? R
      : never)
    | (O extends {
      until: (...args: Array<any>) => Effect<infer _A, infer _E, infer R>
    } ? R
      : never)
  > extends infer Z ? Z
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7349)

Since v2.0.0