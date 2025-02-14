# recurs

A schedule that recurs a fixed number of times before terminating.

**Details**

This schedule will continue executing until it has been stepped `n` times,
after which it will stop. The output of the schedule is the current count of
recurrences.

To import and use `recurs` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.recurs
```

**Signature**

```ts
export declare const recurs: (n: number) => Schedule<number>
```
