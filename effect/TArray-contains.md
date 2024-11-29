# contains

Determine if the array contains a specified value.

To import and use `contains` from the "TArray" module:

ts
import \* as TArray from "effect/TArray"
// Can be accessed like this
TArray.contains
undefined

**Signature**

```ts
export declare const contains: {
  <A>(value: A): (self: TArray<A>) => STM.STM<boolean>
  <A>(self: TArray<A>, value: A): STM.STM<boolean>
}
```
