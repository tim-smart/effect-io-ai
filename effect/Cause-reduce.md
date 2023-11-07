# reduce

Reduces the specified cause into a value of type `Z`, beginning with the
provided `zero` value.

To import and use `reduce` from the "Cause" module:

```ts
import * as Cause from 'effect/Cause'

// Can be accessed like this
Cause.reduce
```

**Signature**

```ts
export declare const reduce: {
  <Z, E>(zero: Z, pf: (accumulator: Z, cause: Cause<E>) => Option.Option<Z>): (self: Cause<E>) => Z
  <Z, E>(self: Cause<E>, zero: Z, pf: (accumulator: Z, cause: Cause<E>) => Option.Option<Z>): Z
}
```
