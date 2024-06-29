# track

Creates a new supervisor that tracks children in a set.

To import and use `track` from the "Supervisor" module:

```ts
import * as Supervisor from "effect/Supervisor"
// Can be accessed like this
Supervisor.track
```

**Signature**

```ts
export declare const track: Effect.Effect<Supervisor<Fiber.RuntimeFiber<any, any>[]>, never, never>
```
