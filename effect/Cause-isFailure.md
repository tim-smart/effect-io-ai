# isFailure

Returns `true` if the specified cause contains a failure, `false` otherwise.

To import and use `isFailure` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.isFailure
```

**Signature**

```ts
export declare const isFailure: <E>(self: Cause<E>) => boolean
```
