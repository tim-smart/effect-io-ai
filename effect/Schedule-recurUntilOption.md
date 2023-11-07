# recurUntilOption

A schedule that recurs for until the input value becomes applicable to
partial function and then map that value with given function.

To import and use `recurUntilOption` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.recurUntilOption
```

**Signature**

```ts
export declare const recurUntilOption: <A, B>(pf: (a: A) => Option.Option<B>) => Schedule<never, A, Option.Option<B>>
```
