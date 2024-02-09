# collectFirst

Finds the result of applying a partial function to the first value in its
domain.

To import and use `collectFirst` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.collectFirst
```

**Signature**

```ts
export declare const collectFirst: {
  <A, B>(pf: (a: A) => Option.Option<B>): (self: TArray<A>) => STM.STM<Option.Option<B>, never, never>
  <A, B>(self: TArray<A>, pf: (a: A) => Option.Option<B>): STM.STM<Option.Option<B>, never, never>
}
```
