# reject

Fail with the returned value if the `PartialFunction` matches, otherwise
continue with our held value.

To import and use `reject` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.reject
undefined

**Signature**

```ts
export declare const reject: {
  <A, E2>(pf: (a: A) => Option.Option<E2>): <E, R>(self: STM<A, E, R>) => STM<A, E2 | E, R>
  <A, E, R, E2>(self: STM<A, E, R>, pf: (a: A) => Option.Option<E2>): STM<A, E | E2, R>
}
```
