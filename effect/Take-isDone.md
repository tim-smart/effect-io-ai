# isDone

Checks if this `take` is done (`Take.end`).

To import and use `isDone` from the "Take" module:

ts
import \* as Take from "effect/Take"
// Can be accessed like this
Take.isDone
undefined

**Signature**

```ts
export declare const isDone: <A, E>(self: Take<A, E>) => boolean
```
