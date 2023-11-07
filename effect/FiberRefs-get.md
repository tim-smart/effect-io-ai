# get

Gets the value of the specified `FiberRef` in this collection of `FiberRef`
values if it exists or `None` otherwise.

To import and use `get` from the "FiberRefs" module:

```ts
import * as FiberRefs from 'effect/FiberRefs'

// Can be accessed like this
FiberRefs.get
```

**Signature**

```ts
export declare const get: {
  <A>(fiberRef: FiberRef.FiberRef<A>): (self: FiberRefs) => Option.Option<A>
  <A>(self: FiberRefs, fiberRef: FiberRef.FiberRef<A>): Option.Option<A>
}
```
