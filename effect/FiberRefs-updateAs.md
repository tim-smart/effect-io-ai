# updateAs

Updates the value of the specified `FiberRef` using the provided `FiberId`

To import and use `updateAs` from the "FiberRefs" module:

```ts
import * as FiberRefs from "effect/FiberRefs"
// Can be accessed like this
FiberRefs.updateAs
```

**Signature**

```ts
export declare const updateAs: {
  <A>(options: {
    readonly fiberId: FiberId.Runtime
    readonly fiberRef: FiberRef.FiberRef<A>
    readonly value: A
  }): (self: FiberRefs) => FiberRefs
  <A>(
    self: FiberRefs,
    options: { readonly fiberId: FiberId.Runtime; readonly fiberRef: FiberRef.FiberRef<A>; readonly value: A }
  ): FiberRefs
}
```
