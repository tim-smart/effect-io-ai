# repeat

Returns a new effect that repeats this effect according to the specified
schedule or until the first failure. Scheduled recurrences are in addition
to the first execution, so that `io.repeat(Schedule.once)` yields an effect
that executes `io`, and then if that succeeds, executes `io` an additional
time.

To import and use `repeat` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.repeat
```

**Signature**

```ts
export declare const repeat: {
  <A, O extends Repeat.Options<A>>(
    options: O
  ): <E, R>(
    self: Effect<A, E, R>
  ) => Effect<
    O extends { schedule: Schedule.Schedule<infer _R, infer _I, infer Out> }
      ? Out
      : O extends { until: Refinement<A, infer B extends A> }
        ? B
        : A,
    | E
    | (O extends { while: (...args: any[]) => Effect<infer _A, infer E, infer _R> } ? E : never)
    | (O extends { until: (...args: any[]) => Effect<infer _A, infer E, infer _R> } ? E : never),
    | R
    | (O extends { schedule: Schedule.Schedule<infer R, infer _I, infer _O> } ? R : never)
    | (O extends { while: (...args: any[]) => Effect<infer _A, infer _E, infer R> } ? R : never)
    | (O extends { until: (...args: any[]) => Effect<infer _A, infer _E, infer R> } ? R : never)
  >
  <R1, A, B>(schedule: Schedule.Schedule<R1, A, B>): <E, R>(self: Effect<A, E, R>) => Effect<B, E, R1 | R>
  <A, E, R, O extends Repeat.Options<A>>(
    self: Effect<A, E, R>,
    options: O
  ): Effect<
    O extends { schedule: Schedule.Schedule<infer _R, infer _I, infer Out> }
      ? Out
      : O extends { until: Refinement<A, infer B extends A> }
        ? B
        : A,
    | E
    | (O extends { while: (...args: any[]) => Effect<infer _A, infer E, infer _R> } ? E : never)
    | (O extends { until: (...args: any[]) => Effect<infer _A, infer E, infer _R> } ? E : never),
    | R
    | (O extends { schedule: Schedule.Schedule<infer R, infer _I, infer _O> } ? R : never)
    | (O extends { while: (...args: any[]) => Effect<infer _A, infer _E, infer R> } ? R : never)
    | (O extends { until: (...args: any[]) => Effect<infer _A, infer _E, infer R> } ? R : never)
  >
  <A, E, R, R1, B>(self: Effect<A, E, R>, schedule: Schedule.Schedule<R1, A, B>): Effect<B, E, R | R1>
}
```
