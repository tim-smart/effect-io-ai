# descriptorWith

Constructs an effect based on information about the current `Fiber`.

To import and use `descriptorWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.descriptorWith
```

**Signature**

```ts
export declare const descriptorWith: <R, E, A>(
  f: (descriptor: Fiber.Fiber.Descriptor) => Effect<R, E, A>
) => Effect<R, E, A>
```
