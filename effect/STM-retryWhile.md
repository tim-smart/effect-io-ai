# retryWhile

Filters the value produced by this effect, retrying the transaction while
the predicate returns `true` for the value.

To import and use `retryWhile` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.retryWhile
```

**Signature**

```ts
export declare const retryWhile: {
  <A>(predicate: Predicate<A>): <R, E>(self: STM<R, E, A>) => STM<R, E, A>
  <R, E, A>(self: STM<R, E, A>, predicate: Predicate<A>): STM<R, E, A>
}
```
