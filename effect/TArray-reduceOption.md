# reduceOption

Atomically reduce the array, if non-empty, by a binary operator.

To import and use `reduceOption` from the "TArray" module:

```ts
import * as TArray from 'effect/TArray'

// Can be accessed like this
TArray.reduceOption
```

**Signature**

```ts
export declare const reduceOption: {
  <A>(f: (x: A, y: A) => A): (self: TArray<A>) => STM.STM<never, never, Option.Option<A>>
  <A>(self: TArray<A>, f: (x: A, y: A) => A): STM.STM<never, never, Option.Option<A>>
}
```
