# collectFirstSTM

Finds the result of applying an transactional partial function to the first
value in its domain.

To import and use `collectFirstSTM` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.collectFirstSTM
```

**Signature**

```ts
export declare const collectFirstSTM: {
  <A, R, E, B>(pf: (a: A) => Option.Option<STM.STM<B, E, R>>): (self: TArray<A>) => STM.STM<Option.Option<B>, E, R>
  <A, R, E, B>(self: TArray<A>, pf: (a: A) => Option.Option<STM.STM<B, E, R>>): STM.STM<Option.Option<B>, E, R>
}
```
