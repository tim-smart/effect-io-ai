# uninterruptible

Marks an effect as uninterruptible.

To import and use `uninterruptible` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.uninterruptible
```

**Signature**

```ts
export declare const uninterruptible: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```
