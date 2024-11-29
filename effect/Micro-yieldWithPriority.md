# yieldWithPriority

Pause the execution of the current `Micro` effect, and resume it on the next
iteration of the event loop.

You can specify a priority for the task, which will determine when it is
executed relative to other tasks.

To import and use `yieldWithPriority` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.yieldWithPriority
undefined

**Signature**

```ts
export declare const yieldWithPriority: (priority: number) => Micro<void>
```
