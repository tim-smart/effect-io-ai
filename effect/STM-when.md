# when

The moral equivalent of `if (p) exp`.

To import and use `when` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.when
```

**Signature**

```ts
export declare const when: {
  (predicate: LazyArg<boolean>): <A, E, R>(self: STM<A, E, R>) => STM<Option.Option<A>, E, R>
  <A, E, R>(self: STM<A, E, R>, predicate: LazyArg<boolean>): STM<Option.Option<A>, E, R>
}
```
