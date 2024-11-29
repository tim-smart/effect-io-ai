# set

Add a fiber to the FiberMap. When the fiber completes, it will be removed from the FiberMap.
If the key already exists in the FiberMap, the previous fiber will be interrupted.

To import and use `set` from the "FiberMap" module:

ts
import \* as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.set
undefined

**Signature**

```ts
export declare const set: {
  <K, A, E, XE extends E, XA extends A>(
    key: K,
    fiber: Fiber.RuntimeFiber<XA, XE>,
    options?:
      | { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined }
      | undefined
  ): (self: FiberMap<K, A, E>) => Effect.Effect<void>
  <K, A, E, XE extends E, XA extends A>(
    self: FiberMap<K, A, E>,
    key: K,
    fiber: Fiber.RuntimeFiber<XA, XE>,
    options?:
      | { readonly onlyIfMissing?: boolean | undefined; readonly propagateInterruption?: boolean | undefined }
      | undefined
  ): Effect.Effect<void>
}
```
