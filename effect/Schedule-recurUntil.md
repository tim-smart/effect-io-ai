## recurUntil

A schedule that recurs until the given predicate evaluates to true.

**Details**

This schedule will continue executing as long as the provided predicate `f`
returns `false` for the input value. Once `f` evaluates to `true`, the
schedule stops recurring.

This is useful for defining schedules that should stop when a certain
condition is met, such as detecting a success state, reaching a threshold, or
avoiding unnecessary retries.

**See**

- `recurUntilEffect` If you need to use an effectful predicate.

**Signature**

```ts
declare const recurUntil: <A>(f: Predicate<A>) => Schedule<A, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1496)

Since v2.0.0