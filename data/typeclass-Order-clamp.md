# clamp

Clamp a value between a minimum and a maximum.

Part of the `Order` module, imported from `@effect/data/typeclass/Order`.

**Signature**

```ts
export declare const clamp: <A>(O: Order<A>) => {
  (minimum: A, maximum: A): (self: A) => A
  (self: A, minimum: A, maximum: A): A
}
```
