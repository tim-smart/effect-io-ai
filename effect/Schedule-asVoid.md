# asVoid

Transforms a schedule to always return `void` instead of its output.

**Details**

This function modifies a given schedule so that it no longer returns
meaningful output—each execution produces `void`. This is useful when the
schedule is used only for timing purposes and the actual output of the
schedule is irrelevant.

The schedule still determines when executions should occur, but the results
are discarded.

To import and use `asVoid` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.asVoid
```

**Signature**

```ts
export declare const asVoid: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<void, In, R>
```
