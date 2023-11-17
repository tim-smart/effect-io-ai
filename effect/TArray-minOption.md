# minOption

Atomically compute the least element in the array, if it exists.

To import and use `minOption` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.minOption
```

**Signature**

```ts
export declare const minOption: {
  <A>(order: Order.Order<A>): (self: TArray<A>) => STM.STM<never, never, Option.Option<A>>
  <A>(self: TArray<A>, order: Order.Order<A>): STM.STM<never, never, Option.Option<A>>
}
```
