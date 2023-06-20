# bindDiscard

A variant of `bind` that sequentially ignores the scope.

To import and use `bindDiscard` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.bindDiscard
```

**Signature**

```ts
export declare const bindDiscard: {
  <N extends string, A extends object, B>(name: Exclude<N, keyof A>, that: Option<B>): (
    self: Option<A>
  ) => Option<{ [K in N | keyof A]: K extends keyof A ? A[K] : B }>
  <A extends object, N extends string, B>(self: Option<A>, name: Exclude<N, keyof A>, that: Option<B>): Option<{
    [K in N | keyof A]: K extends keyof A ? A[K] : B
  }>
}
```
