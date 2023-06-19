# getOrDefault

Gets the value of the specified `FiberRef` in this collection of `FiberRef`
values if it exists or the `initial` value of the `FiberRef` otherwise.

Part of the `FiberRefs` module, imported from `@effect/io/FiberRefs`.

**Signature**

```ts
export declare const getOrDefault: {
  <A>(fiberRef: FiberRef.FiberRef<A>): (self: FiberRefs) => A
  <A>(self: FiberRefs, fiberRef: FiberRef.FiberRef<A>): A
}
```
