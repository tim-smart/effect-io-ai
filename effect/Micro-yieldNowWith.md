# yieldNowWith

Pause the execution of the current `Micro` effect, and resume it on the next
scheduler tick.

To import and use `yieldNowWith` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.yieldNowWith
```

**Signature**

```ts
export declare const yieldNowWith: (priority?: number) => Micro<void>
```
