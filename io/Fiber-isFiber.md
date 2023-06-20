# isFiber

Returns `true` if the specified value is a `Fiber`, `false` otherwise.

To import and use `isFiber` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.isFiber
```

**Signature**

```ts
export declare const isFiber: (u: unknown) => u is Fiber<unknown, unknown>
```
