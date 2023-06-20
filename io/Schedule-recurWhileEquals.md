# recurWhileEquals

A schedule that recurs for as long as the predicate is equal to the
specified value.

To import and use `recurWhileEquals` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.recurWhileEquals
```

**Signature**

```ts
export declare const recurWhileEquals: <A>(value: A) => Schedule<never, A, A>
```
