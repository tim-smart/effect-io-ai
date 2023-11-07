# interruptAs

Interrupts the fiber running the effect with the specified `FiberId`.

To import and use `interruptAs` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.interruptAs
```

**Signature**

```ts
export declare const interruptAs: (fiberId: FiberId.FiberId) => STM<never, never, never>
```
