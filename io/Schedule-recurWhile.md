# recurWhile

A schedule that recurs for as long as the predicate evaluates to true.

To import and use `recurWhile` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.recurWhile
```

**Signature**

```ts
export declare const recurWhile: <A>(f: Predicate<A>) => Schedule<never, A, A>
```
