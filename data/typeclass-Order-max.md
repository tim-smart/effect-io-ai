# max

Take the maximum of two values. If they are considered equal, the first argument is chosen.

Part of the `Order` module, imported from `@effect/data/typeclass/Order`.

**Signature**

```ts
export declare const max: <A>(O: Order<A>) => { (that: A): (self: A) => A; (self: A, that: A): A }
```
