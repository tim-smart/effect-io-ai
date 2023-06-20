# interrupt

Constructs a new `Interrupt` cause from the specified `fiberId`.

To import and use `interrupt` from the "Cause" module:

```ts
import * as Cause from '@effect/io/Cause'

// Can be accessed like this
Cause.interrupt
```

**Signature**

```ts
export declare const interrupt: (fiberId: FiberId.FiberId) => Cause<never>
```
