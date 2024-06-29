# retry

Retries according to the options provided

To import and use `retry` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.retry
```

**Signature**

```ts
export declare const retry: {
  <E, O extends Retry.Options<E>>(
    options: O
  ): <A, R>(
    self: Effect<A, E, R>
  ) => Effect<
    A,
    | (O extends { schedule: Schedule.Schedule<infer _O, infer _I, infer _R> }
        ? E
        : O extends { until: Refinement<E, infer E2 extends E> }
          ? E2
          : E)
    | (O extends { while: (...args: any[]) => Effect<infer _A, infer E, infer _R> } ? E : never)
    | (O extends { until: (...args: any[]) => Effect<infer _A, infer E, infer _R> } ? E : never),
    | R
    | (O extends { schedule: Schedule.Schedule<infer _O, infer _I, infer R> } ? R : never)
    | (O extends { while: (...args: any[]) => Effect<infer _A, infer _E, infer R> } ? R : never)
    | (O extends { until: (...args: any[]) => Effect<infer _A, infer _E, infer R> } ? R : never)
  >
  <B, E, R1>(policy: Schedule.Schedule<B, NoInfer<E>, R1>): <A, R>(self: Effect<A, E, R>) => Effect<A, E, R1 | R>
  <A, E, R, O extends Retry.Options<E>>(
    self: Effect<A, E, R>,
    options: O
  ): Effect<
    A,
    | (O extends { schedule: Schedule.Schedule<infer _O, infer _I, infer _R> }
        ? E
        : O extends { until: Refinement<E, infer E2 extends E> }
          ? E2
          : E)
    | (O extends { while: (...args: any[]) => Effect<infer _A, infer E, infer _R> } ? E : never)
    | (O extends { until: (...args: any[]) => Effect<infer _A, infer E, infer _R> } ? E : never),
    | R
    | (O extends { schedule: Schedule.Schedule<infer _O, infer _I, infer R> } ? R : never)
    | (O extends { while: (...args: any[]) => Effect<infer _A, infer _E, infer R> } ? R : never)
    | (O extends { until: (...args: any[]) => Effect<infer _A, infer _E, infer R> } ? R : never)
  >
  <A, E, R, B, R1>(self: Effect<A, E, R>, policy: Schedule.Schedule<B, E, R1>): Effect<A, E, R | R1>
}
```
