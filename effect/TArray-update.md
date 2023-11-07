# update

Updates element in the array with given function.

To import and use `update` from the "TArray" module:

```ts
import * as TArray from 'effect/TArray'

// Can be accessed like this
TArray.update
```

**Signature**

```ts
export declare const update: {
  <A>(index: number, f: (value: A) => A): (self: TArray<A>) => STM.STM<never, never, void>
  <A>(self: TArray<A>, index: number, f: (value: A) => A): STM.STM<never, never, void>
}
```
