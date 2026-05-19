Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.Retry.Return

Computes the client type returned by `retry` for a given set of retry options.

The result includes errors and requirements introduced by schedules and effectful retry predicates.

**Signature**

```ts
type HttpClient.With<(O extends { schedule: Schedule.Schedule<infer _O, infer _I, infer _E, infer _R>; } ? E | _E : O extends { times: number; } ? E : O extends { until: Predicate.Refinement<E, infer E2>; } ? E2 : E) | (O extends { while: (...args: Array<any>) => Effect.Effect<infer _A, infer E, infer _R>; } ? E : never) | (O extends { until: (...args: Array<any>) => Effect.Effect<infer _A, infer E, infer _R>; } ? E : never), R | (O extends { schedule: Schedule.Schedule<infer _O, infer _I, infer _E, infer R>; } ? R : never) | (O extends { while: (...args: Array<any>) => Effect.Effect<infer _A, infer _E, infer R>; } ? R : never) | (O extends { until: (...args: Array<any>) => Effect.Effect<infer _A, infer _E, infer R>; } ? R : never)> = HttpClient.With<
    | (O extends { schedule: Schedule.Schedule<infer _O, infer _I, infer _E, infer _R> } ? E | _E
      : O extends { times: number } ? E
      : O extends { until: Predicate.Refinement<E, infer E2> } ? E2
      : E)
    | (O extends { while: (...args: Array<any>) => Effect.Effect<infer _A, infer E, infer _R> } ? E : never)
    | (O extends { until: (...args: Array<any>) => Effect.Effect<infer _A, infer E, infer _R> } ? E : never),
    | R
    | (O extends { schedule: Schedule.Schedule<infer _O, infer _I, infer _E, infer R> } ? R : never)
    | (O extends { while: (...args: Array<any>) => Effect.Effect<infer _A, infer _E, infer R> } ? R : never)
    | (O extends { until: (...args: Array<any>) => Effect.Effect<infer _A, infer _E, infer R> } ? R : never)
  > extends infer Z ? Z : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L814)

Since v4.0.0