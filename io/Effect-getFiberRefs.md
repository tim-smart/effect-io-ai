# getFiberRefs

Returns a collection of all `FiberRef` values for the fiber running this
effect.

To import and use `getFiberRefs` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.getFiberRefs
```

**Signature**

```ts
export declare const getFiberRefs: (_: void) => Effect<never, never, FiberRefs.FiberRefs>
```