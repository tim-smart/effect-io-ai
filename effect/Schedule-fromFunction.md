# fromFunction

A schedule that always recurs, mapping input values through the specified
function.

To import and use `fromFunction` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.fromFunction
```

**Signature**

```ts
export declare const fromFunction: <A, B>(f: (a: A) => B) => Schedule<never, A, B>
```
