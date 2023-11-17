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
    readonly onFailure: (error: XE) => STM<R2, E2, A2>
    readonly onSuccess: (value: XA) => STM<R3, E3, A3>
  }): <R>(self: STM<R, E, A>) => STM<R2 | R3 | R, E | E2 | E3, A>
  <R, E, XE extends E, R2, E2, A2, A, XA extends A, R3, E3, A3>(
    self: STM<R, E, A>,
    options: { readonly onFailure: (error: XE) => STM<R2, E2, A2>; readonly onSuccess: (value: XA) => STM<R3, E3, A3> }
  ): STM<R | R2 | R3, E | E2 | E3, A>
}
```
