# inheritAll

Inherits values from all `FiberRef` instances into current fiber. This
will resume immediately.

To import and use `inheritAll` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.inheritAll
```

**Signature**

```ts
export declare const inheritAll: <E, A>(self: Fiber<E, A>) => Effect.Effect<never, never, void>
```
