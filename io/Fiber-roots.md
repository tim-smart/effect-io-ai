# roots

Returns a chunk containing all root fibers.

To import and use `roots` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.roots
```

**Signature**

```ts
export declare const roots: (_: void) => Effect.Effect<never, never, Array<RuntimeFiber<any, any>>>
```
