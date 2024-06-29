# getCurrentFiber

Gets the current fiber if one is running.

To import and use `getCurrentFiber` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.getCurrentFiber
```

**Signature**

```ts
export declare const getCurrentFiber: () => Option.Option<RuntimeFiber<any, any>>
```
