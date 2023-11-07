# getOrDefault

Gets the value of the specified `FiberRef` in this collection of `FiberRef`
values if it exists or the `initial` value of the `FiberRef` otherwise.

To import and use `getOrDefault` from the "FiberRefs" module:

```ts
import * as FiberRefs from 'effect/FiberRefs'

// Can be accessed like this
FiberRefs.getOrDefault
```

**Signature**

```ts
export declare const getOrDefault: {
  <A>(fiberRef: FiberRef.FiberRef<A>): (self: FiberRefs) => A
  <A>(self: FiberRefs, fiberRef: FiberRef.FiberRef<A>): A
}
```
