# transform

Atomically updates all elements using a pure function.

To import and use `transform` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.transform
```

**Signature**

```ts
export declare const transform: {
  <A>(f: (value: A) => A): (self: TArray<A>) => STM.STM<never, never, void>
  <A>(self: TArray<A>, f: (value: A) => A): STM.STM<never, never, void>
}
```
