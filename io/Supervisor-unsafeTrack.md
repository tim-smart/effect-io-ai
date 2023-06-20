# unsafeTrack

Unsafely creates a new supervisor that tracks children in a set.

To import and use `unsafeTrack` from the "Supervisor" module:

```ts
import * as Supervisor from '@effect/io/Supervisor'

// Can be accessed like this
Supervisor.unsafeTrack
```

**Signature**

```ts
export declare const unsafeTrack: () => Supervisor<Array<Fiber.RuntimeFiber<any, any>>>
```
