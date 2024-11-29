# lastOption

The last entry in the array, if it exists.

To import and use `lastOption` from the "TArray" module:

ts
import \* as TArray from "effect/TArray"
// Can be accessed like this
TArray.lastOption
undefined

**Signature**

```ts
export declare const lastOption: <A>(self: TArray<A>) => STM.STM<Option.Option<A>>
```
