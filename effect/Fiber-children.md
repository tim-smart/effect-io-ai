# children

Retrieves the immediate children of the fiber.

To import and use `children` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.children
```

**Signature**

```ts
export declare const children: <E, A>(self: Fiber<E, A>) => Effect.Effect<never, never, Array<RuntimeFiber<any, any>>>
```
