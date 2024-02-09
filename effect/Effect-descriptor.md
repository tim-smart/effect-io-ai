# descriptor

Constructs an effect with information about the current `Fiber`.

To import and use `descriptor` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.descriptor
```

**Signature**

```ts
export declare const descriptor: Effect<Fiber.Fiber.Descriptor, never, never>
```
