# bindDiscard

A variant of `bind` that sequentially ignores the scope.

To import and use `bindDiscard` from the "Identity" module:

```ts
import * as Identity from '@effect/data/Identity'

// Can be accessed like this
Identity.bindDiscard
```

**Signature**

```ts
export declare const bindDiscard: {
  <N extends string, A extends object, B>(name: Exclude<N, keyof A>, that: B): (self: A) => {
    [K in N | keyof A]: K extends keyof A ? A[K] : B
  }
  <A extends object, N extends string, B>(self: A, name: Exclude<N, keyof A>, that: B): {
    [K in N | keyof A]: K extends keyof A ? A[K] : B
  }
}
```
