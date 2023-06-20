# bindDiscard

A variant of `bind` that sequentially ignores the scope.

To import and use `bindDiscard` from the "Predicate" module:

```ts
import * as Predicate from '@effect/data/Predicate'

// Can be accessed like this
Predicate.bindDiscard
```

**Signature**

```ts
export declare const bindDiscard: {
  <N extends string, A extends object, B>(name: Exclude<N, keyof A>, that: Predicate<B>): (
    self: Predicate<A>
  ) => Predicate<{ readonly [K in N | keyof A]: K extends keyof A ? A[K] : B }>
  <A extends object, N extends string, B>(
    self: Predicate<A>,
    name: Exclude<N, keyof A>,
    that: Predicate<B>
  ): Predicate<{ readonly [K in N | keyof A]: K extends keyof A ? A[K] : B }>
}
```
