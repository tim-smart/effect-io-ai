# interruptible

Returns true only if the `Interruption` flag is **enabled** and the
`WindDown` flag is **disabled**.

A fiber is said to be interruptible if interruption is enabled and the fiber
is not in its wind-down phase, in which it takes care of cleanup activities
related to fiber shutdown.

To import and use `interruptible` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.interruptible
```

**Signature**

```ts
export declare const interruptible: (self: RuntimeFlags) => boolean
```
