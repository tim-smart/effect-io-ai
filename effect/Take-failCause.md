# failCause

Creates a failing `Take` with the specified cause.

To import and use `failCause` from the "Take" module:

ts
import \* as Take from "effect/Take"
// Can be accessed like this
Take.failCause
undefined

**Signature**

```ts
export declare const failCause: <E>(cause: Cause.Cause<E>) => Take<never, E>
```
