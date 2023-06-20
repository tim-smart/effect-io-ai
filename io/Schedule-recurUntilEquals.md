# recurUntilEquals

A schedule that recurs for until the predicate is equal.

To import and use `recurUntilEquals` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.recurUntilEquals
```

**Signature**

```ts
export declare const recurUntilEquals: <A>(value: A) => Schedule<never, A, A>
```
