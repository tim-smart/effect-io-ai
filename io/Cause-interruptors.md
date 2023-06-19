# interruptors

Returns a `HashSet` of `FiberId`s for all fibers that interrupted the fiber
described by the specified cause.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const interruptors: <E>(self: Cause<E>) => HashSet.HashSet<FiberId.FiberId>
```
