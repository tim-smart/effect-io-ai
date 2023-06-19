# updatedAs

Updates the value of the specified `FiberRef` using the provided `FiberId`

Part of the `FiberRefs` module, imported from `@effect/io/FiberRefs`.

**Signature**

```ts
export declare const updatedAs: {
  <A>(fiberId: FiberId.Runtime, fiberRef: FiberRef.FiberRef<A>, value: A): (self: FiberRefs) => FiberRefs
  <A>(self: FiberRefs, fiberId: FiberId.Runtime, fiberRef: FiberRef.FiberRef<A>, value: A): FiberRefs
}
```
