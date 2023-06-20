# interrupted

Constructrs a `Fiber` that is already interrupted.

To import and use `interrupted` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.interrupted
```

**Signature**

```ts
export declare const interrupted: (fiberId: FiberId.FiberId) => Fiber<never, never>
```
