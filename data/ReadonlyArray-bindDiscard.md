# bindDiscard

A variant of `bind` that sequentially ignores the scope.

To import and use `bindDiscard` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.bindDiscard
```

**Signature**

```ts
export declare const bindDiscard: {
  <N extends string, A extends object, B>(name: Exclude<N, keyof A>, that: readonly B[]): (
    self: readonly A[]
  ) => { [K in N | keyof A]: K extends keyof A ? A[K] : B }[]
  <A extends object, N extends string, B>(self: readonly A[], name: Exclude<N, keyof A>, that: readonly B[]): {
    [K in N | keyof A]: K extends keyof A ? A[K] : B
  }[]
}
```
