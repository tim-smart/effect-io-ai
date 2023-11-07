# orElseSucceed

Tries this effect first, and if it fails or retries, succeeds with the
specified value.

To import and use `orElseSucceed` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.orElseSucceed
```

**Signature**

```ts
export declare const orElseSucceed: {
  <A2>(value: LazyArg<A2>): <R, E, A>(self: STM<R, E, A>) => STM<R, never, A2 | A>
  <R, E, A, A2>(self: STM<R, E, A>, value: LazyArg<A2>): STM<R, never, A | A2>
}
```
