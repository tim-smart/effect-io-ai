# once

A schedule that executes only once and then stops.

**Details**

This schedule triggers a single execution and then terminates. It does not
repeat or apply any additional logic.

To import and use `once` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.once
```

**Signature**

```ts
export declare const once: Schedule<void, unknown, never>
```
