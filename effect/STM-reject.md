# reject

Fail with the returned value if the `PartialFunction` matches, otherwise
continue with our held value.

To import and use `reject` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.reject
```

**Signature**

```ts
export declare const reject: {
  <A, E2>(pf: (a: A) => Option.Option<E2>): <R, E>(self: STM<R, E, A>) => STM<R, E2 | E, A>
  <R, E, A, E2>(self: STM<R, E, A>, pf: (a: A) => Option.Option<E2>): STM<R, E | E2, A>
}
```
