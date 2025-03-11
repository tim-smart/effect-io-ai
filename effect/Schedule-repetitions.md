## repetitions

Returns a new schedule that outputs the number of repetitions of this one.

**Details**

This schedule tracks how many times the given schedule has executed and
outputs the count instead of the original values. The first execution starts
at `0`, and the count increases with each recurrence.

**Signature**

```ts
declare const repetitions: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<number, In, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1677)

Since v2.0.0