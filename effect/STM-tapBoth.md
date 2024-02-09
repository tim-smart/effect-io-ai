# tapBoth

"Peeks" at both sides of an transactional effect.

To import and use `tapBoth` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.tapBoth
```

**Signature**

```ts
export declare const tapBoth: {
  <E, XE extends E, R2, E2, A2, A, XA extends A, R3, E3, A3>(options: {
    readonly onFailure: (error: XE) => STM<A2, E2, R2>
    readonly onSuccess: (value: XA) => STM<A3, E3, R3>
  }): <R>(self: STM<A, E, R>) => STM<A, E | E2 | E3, R2 | R3 | R>
  <R, E, XE extends E, R2, E2, A2, A, XA extends A, R3, E3, A3>(
    self: STM<A, E, R>,
    options: { readonly onFailure: (error: XE) => STM<A2, E2, R2>; readonly onSuccess: (value: XA) => STM<A3, E3, R3> }
  ): STM<A, E | E2 | E3, R | R2 | R3>
}
```
