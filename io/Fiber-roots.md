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
export declare const roots: Effect.Effect<never, never, RuntimeFiber<any, any>[]>
```
