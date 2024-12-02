# failSync

Creates a `Micro` effect that will fail with the lazily evaluated error.

This will result in a `CauseFail`, where the error is tracked at the
type level.

To import and use `failSync` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.failSync
undefined

**Signature**

```ts
export declare const failSync: <E>(error: LazyArg<E>) => Micro<never, E>
```
