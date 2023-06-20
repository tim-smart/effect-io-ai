# updatedAs

Updates the value of the specified `FiberRef` using the provided `FiberId`

To import and use `updatedAs` from the "FiberRefs" module:

```ts
import * as FiberRefs from '@effect/io/FiberRefs'

// Can be accessed like this
FiberRefs.updatedAs
```

**Signature**

```ts
export declare const updatedAs: {
  <A>(fiberId: FiberId.Runtime, fiberRef: FiberRef.FiberRef<A>, value: A): (self: FiberRefs) => FiberRefs
  <A>(self: FiberRefs, fiberId: FiberId.Runtime, fiberRef: FiberRef.FiberRef<A>, value: A): FiberRefs
}
```
