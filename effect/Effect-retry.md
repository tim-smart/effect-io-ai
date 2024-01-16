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
  ): <R, A>(
    self: Effect<R, E, A>
  ) => Effect<
    | R
    | (O extends { schedule: Schedule.Schedule<infer X, infer _I, infer _O> } ? X : never)
    | (O extends { while: (...args: any[]) => Effect<infer X, infer _E, infer _A> } ? X : never)
    | (O extends { until: (...args: any[]) => Effect<infer X, infer _E, infer _A> } ? X : never),
    | (O extends { schedule: Schedule.Schedule<infer _R, infer _I, infer _O> }
        ? E
        : O extends { until: Refinement<E, infer E2 extends E> }
          ? E2
          : E)
    | (O extends { while: (...args: any[]) => Effect<infer _R, infer X, infer _A> } ? X : never)
    | (O extends { until: (...args: any[]) => Effect<infer _R, infer X, infer _A> } ? X : never),
    A
  >
  <R1, E extends E0, E0, B>(policy: Schedule.Schedule<R1, E0, B>): <R, A>(self: Effect<R, E, A>) => Effect<R1 | R, E, A>
  <R, A, E, O extends Retry.Options<E>>(
    self: Effect<R, E, A>,
    options: O
  ): Effect<
    | R
    | (O extends { schedule: Schedule.Schedule<infer X, infer _I, infer _O> } ? X : never)
    | (O extends { while: (...args: any[]) => Effect<infer X, infer _E, infer _A> } ? X : never)
    | (O extends { until: (...args: any[]) => Effect<infer X, infer _E, infer _A> } ? X : never),
    | (O extends { schedule: Schedule.Schedule<infer _R, infer _I, infer _O> }
        ? E
        : O extends { until: Refinement<E, infer E2 extends E> }
          ? E2
          : E)
    | (O extends { while: (...args: any[]) => Effect<infer _R, infer X, infer _A> } ? X : never)
    | (O extends { until: (...args: any[]) => Effect<infer _R, infer X, infer _A> } ? X : never),
    A
  >
  <R, E extends E0, E0, A, R1, B>(self: Effect<R, E, A>, policy: Schedule.Schedule<R1, E0, B>): Effect<R | R1, E, A>
}
```
