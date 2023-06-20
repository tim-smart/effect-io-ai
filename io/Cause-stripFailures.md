# stripFailures

Remove all `Fail` and `Interrupt` nodes from the specified cause, and return
a cause containing only `Die` cause/finalizer defects.

To import and use `stripFailures` from the "Cause" module:

```ts
import * as Cause from '@effect/io/Cause'

// Can be accessed like this
Cause.stripFailures
```

**Signature**

```ts
export declare const stripFailures: <E>(self: Cause<E>) => Cause<never>
```
