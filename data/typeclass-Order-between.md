# between

Test whether a value is between a minimum and a maximum (inclusive).

Part of the `Order` module, imported from `@effect/data/typeclass/Order`.

**Signature**

```ts
export declare const between: <A>(O: Order<A>) => {
  (minimum: A, maximum: A): (self: A) => boolean
  (self: A, minimum: A, maximum: A): boolean
}
```
