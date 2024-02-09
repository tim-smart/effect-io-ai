# forever

Repeats this effect forever (until the first error).

To import and use `forever` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.forever
```

**Signature**

```ts
export declare const forever: <A, E, R>(self: Effect<A, E, R>) => Effect<never, E, R>
```
