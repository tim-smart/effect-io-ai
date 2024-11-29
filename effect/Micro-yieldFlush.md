# yieldFlush

Flush any yielded effects that are waiting to be executed.

To import and use `yieldFlush` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.yieldFlush
undefined

**Signature**

```ts
export declare const yieldFlush: Micro<void, never, never>
```
