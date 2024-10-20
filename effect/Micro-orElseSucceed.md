# orElseSucceed

Recover from all errors by succeeding with the given value.

To import and use `orElseSucceed` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.orElseSucceed
```

**Signature**

```ts
export declare const orElseSucceed: {
  <B>(f: LazyArg<B>): <A, E, R>(self: Micro<A, E, R>) => Micro<A | B, never, R>
  <A, E, R, B>(self: Micro<A, E, R>, f: LazyArg<B>): Micro<A | B, never, R>
}
```
