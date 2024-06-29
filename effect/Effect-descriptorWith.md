# descriptorWith

Constructs an effect based on information about the current `Fiber`.

To import and use `descriptorWith` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.descriptorWith
```

**Signature**

```ts
export declare const descriptorWith: <A, E, R>(
  f: (descriptor: Fiber.Fiber.Descriptor) => Effect<A, E, R>
) => Effect<A, E, R>
```
