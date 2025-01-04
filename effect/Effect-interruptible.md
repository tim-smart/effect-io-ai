# interruptible

Marks an effect as interruptible.

To import and use `interruptible` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.interruptible
```

**Signature**

```ts
export declare const interruptible: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```
