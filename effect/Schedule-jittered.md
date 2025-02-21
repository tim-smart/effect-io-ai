# jittered

Returns a new schedule that randomly adjusts the interval size within a
range.

**Details**

This function modifies a schedule so that its delay between executions is
randomly varied within a range. By default, the delay is adjusted between
`80%` (`0.8 * interval`) and `120%` (`1.2 * interval`) of the original
interval size.

This is useful for adding randomness to repeated executions, reducing
contention in distributed systems, and avoiding synchronized execution
patterns that can cause bottlenecks.

To import and use `jittered` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.jittered
```

**Signature**

```ts
export declare const jittered: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
```
