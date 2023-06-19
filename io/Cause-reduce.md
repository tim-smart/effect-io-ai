# reduce

Reduces the specified cause into a value of type `Z`, beginning with the
provided `zero` value.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const reduce: {
  <Z, E>(zero: Z, pf: (accumulator: Z, cause: Cause<E>) => Option.Option<Z>): (self: Cause<E>) => Z
  <Z, E>(self: Cause<E>, zero: Z, pf: (accumulator: Z, cause: Cause<E>) => Option.Option<Z>): Z
}
```
