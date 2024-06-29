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
export declare const children: <A, E>(self: Fiber<A, E>) => Effect.Effect<Array<RuntimeFiber<any, any>>>
```
