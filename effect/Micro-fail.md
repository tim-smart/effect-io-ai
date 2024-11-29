# fail

Creates a `Micro` effect that will fail with the specified error.

This will result in a `CauseFail`, where the error is tracked at the
type level.

To import and use `fail` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.fail
undefined

**Signature**

```ts
export declare const fail: <E>(e: E) => Micro<never, E>
```
