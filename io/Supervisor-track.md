# track

Creates a new supervisor that tracks children in a set.

To import and use `track` from the "Supervisor" module:

```ts
import * as Supervisor from '@effect/io/Supervisor'

// Can be accessed like this
Supervisor.track
```

**Signature**

```ts
export declare const track: Effect.Effect<never, never, Supervisor<Fiber.RuntimeFiber<any, any>[]>>
```
