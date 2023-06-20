# interrupt

Constructs a new `Exit.Failure` from the specified `FiberId` indicating that
the `Fiber` running an `Effect` workflow was terminated due to interruption.

To import and use `interrupt` from the "Exit" module:

```ts
import * as Exit from '@effect/io/Exit'

// Can be accessed like this
Exit.interrupt
```

**Signature**

```ts
export declare const interrupt: (fiberId: FiberId.FiberId) => Exit<never, never>
```
