# checkInterruptible

Checks the interrupt status, and produces the effect returned by the
specified callback.

To import and use `checkInterruptible` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.checkInterruptible
```

**Signature**

```ts
export declare const checkInterruptible: <R, E, A>(f: (isInterruptible: boolean) => Effect<R, E, A>) => Effect<R, E, A>
```
