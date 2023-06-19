# greaterThanOrEqualTo

Test whether one value is _non-strictly greater than_ another.

Part of the `Order` module, imported from `@effect/data/typeclass/Order`.

**Signature**

```ts
export declare const greaterThanOrEqualTo: <A>(O: Order<A>) => {
  (that: A): (self: A) => boolean
  (self: A, that: A): boolean
}
```
