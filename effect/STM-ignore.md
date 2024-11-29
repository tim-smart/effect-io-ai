# ignore

Returns a new effect that ignores the success or failure of this effect.

To import and use `ignore` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.ignore
undefined

**Signature**

```ts
export declare const ignore: <A, E, R>(self: STM<A, E, R>) => STM<void, never, R>
```
