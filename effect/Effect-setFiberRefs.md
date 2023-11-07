# setFiberRefs

Sets the `FiberRef` values for the fiber running this effect to the values
in the specified collection of `FiberRef` values.

To import and use `setFiberRefs` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.setFiberRefs
```

**Signature**

```ts
export declare const setFiberRefs: (fiberRefs: FiberRefs.FiberRefs) => Effect<never, never, void>
```
