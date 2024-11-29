# fail

Creates a failing `Take` with the specified error.

To import and use `fail` from the "Take" module:

ts
import \* as Take from "effect/Take"
// Can be accessed like this
Take.fail
undefined

**Signature**

```ts
export declare const fail: <E>(error: E) => Take<never, E>
```
