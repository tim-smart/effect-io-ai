# isInterruptedException

Returns `true` if the specified value is an `InterruptedException`, `false`
otherwise.

To import and use `isInterruptedException` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.isInterruptedException
```

**Signature**

```ts
export declare const isInterruptedException: (u: unknown) => u is InterruptedException
```
