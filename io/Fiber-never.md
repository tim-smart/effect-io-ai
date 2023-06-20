# never

A fiber that never fails or succeeds.

To import and use `never` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.never
```

**Signature**

```ts
export declare const never: (_: void) => Fiber<never, never>
```
