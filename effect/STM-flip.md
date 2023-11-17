# flip

Flips the success and failure channels of this transactional effect. This
allows you to use all methods on the error channel, possibly before
flipping back.

To import and use `flip` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.flip
```

**Signature**

```ts
export declare const flip: <R, E, A>(self: STM<R, E, A>) => STM<R, A, E>
```
