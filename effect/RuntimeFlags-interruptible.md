# interruptible

Returns true only if the `Interruption` flag is **enabled** and the
`WindDown` flag is **disabled**.

A fiber is said to be interruptible if interruption is enabled and the fiber
is not in its wind-down phase, in which it takes care of cleanup activities
related to fiber shutdown.

To import and use `interruptible` from the "RuntimeFlags" module:

ts
import \* as RuntimeFlags from "effect/RuntimeFlags"
// Can be accessed like this
RuntimeFlags.interruptible
undefined

**Signature**

```ts
export declare const interruptible: (self: RuntimeFlags) => boolean
```
