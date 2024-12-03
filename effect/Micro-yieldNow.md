# yieldNow

Pause the execution of the current `Micro` effect, and resume it on the next
scheduler tick.

To import and use `yieldNow` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.yieldNow
undefined

**Signature**

```ts
export declare const yieldNow: Micro<void, never, never>
```
