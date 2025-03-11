## unfold

Creates a schedule that repeatedly applies a function to transform a state
value, producing a sequence of values.

**Details**

This function starts with an `initial` value and applies `f` recursively to
generate the next state at each step. The schedule continues indefinitely,
producing a stream of values by unfolding the state over time.

**Signature**

```ts
declare const unfold: <A>(initial: A, f: (a: A) => A) => Schedule<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1842)

Since v2.0.0