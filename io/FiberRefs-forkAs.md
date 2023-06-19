# forkAs

Forks this collection of fiber refs as the specified child fiber id. This
will potentially modify the value of the fiber refs, as determined by the
individual fiber refs that make up the collection.

Part of the `FiberRefs` module, imported from `@effect/io/FiberRefs`.

**Signature**

```ts
export declare const forkAs: {
  (childId: FiberId.Runtime): (self: FiberRefs) => FiberRefs
  (self: FiberRefs, childId: FiberId.Runtime): FiberRefs
}
```
