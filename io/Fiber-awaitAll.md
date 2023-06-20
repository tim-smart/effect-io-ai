# awaitAll

Awaits on all fibers to be completed, successfully or not.

To import and use `awaitAll` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.awaitAll
```

**Signature**

```ts
export declare const awaitAll: (fibers: Iterable<Fiber<any, any>>) => Effect.Effect<never, never, void>
```
