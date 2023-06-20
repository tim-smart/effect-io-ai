# unsafeRoots

Returns a chunk containing all root fibers.

To import and use `unsafeRoots` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.unsafeRoots
```

**Signature**

```ts
export declare const unsafeRoots: (_: void) => Array<RuntimeFiber<any, any>>
```
