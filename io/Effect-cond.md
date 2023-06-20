# cond

Evaluate the predicate, return the given `A` as success if predicate returns
true, and the given `E` as error otherwise

For effectful conditionals, see `ifEffect`.

To import and use `cond` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.cond
```

**Signature**

```ts
export declare const cond: <E, A>(
  predicate: LazyArg<boolean>,
  result: LazyArg<A>,
  error: LazyArg<E>
) => Effect<never, E, A>
```
