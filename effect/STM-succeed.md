# succeed

Returns an `STM` effect that succeeds with the specified value.

To import and use `succeed` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.succeed
undefined

**Signature**

```ts
export declare const succeed: <A>(value: A) => STM<A>
```
