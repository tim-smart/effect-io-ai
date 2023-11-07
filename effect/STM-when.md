# when

The moral equivalent of `if (p) exp`.

To import and use `when` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.when
```

**Signature**

```ts
export declare const when: {
  (predicate: LazyArg<boolean>): <R, E, A>(self: STM<R, E, A>) => STM<R, E, Option.Option<A>>
  <R, E, A>(self: STM<R, E, A>, predicate: LazyArg<boolean>): STM<R, E, Option.Option<A>>
}
```
