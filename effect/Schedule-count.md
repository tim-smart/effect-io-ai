## count

A schedule that recurs indefinitely, counting the number of recurrences.

**Details**

This schedule never stops and simply counts how many times it has executed.
Each recurrence increases the count, starting from `0`.

This is useful when tracking the number of attempts in retry policies,
measuring execution loops, or implementing infinite polling scenarios.

**Signature**

```ts
declare const count: Schedule<number, unknown, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L622)

Since v2.0.0