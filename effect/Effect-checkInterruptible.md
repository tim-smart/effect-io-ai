# checkInterruptible

Checks the interrupt status, and produces the effect returned by the
specified callback.

To import and use `checkInterruptible` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.checkInterruptible
undefined

**Signature**

```ts
export declare const checkInterruptible: <A, E, R>(f: (isInterruptible: boolean) => Effect<A, E, R>) => Effect<A, E, R>
```
