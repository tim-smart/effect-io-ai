## forever

Creates a schedule that recurs indefinitely, producing a count of
repetitions.

**Details**

This schedule runs indefinitely, returning an increasing count of executions
(`0, 1, 2, 3, ...`). Each step increments the count by one, allowing tracking
of how many times it has executed.

**Signature**

```ts
declare const forever: Schedule<number, unknown, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1062)

Since v2.0.0