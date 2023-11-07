# maxOption

Atomically compute the greatest element in the array, if it exists.

To import and use `maxOption` from the "TArray" module:

```ts
import * as TArray from 'effect/TArray'

// Can be accessed like this
TArray.maxOption
```

**Signature**

```ts
export declare const maxOption: {
  <A>(order: Order.Order<A>): (self: TArray<A>) => STM.STM<never, never, Option.Option<A>>
  <A>(self: TArray<A>, order: Order.Order<A>): STM.STM<never, never, Option.Option<A>>
}
```
