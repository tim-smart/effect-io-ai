# awaitAllChildren

Returns a new effect that will not succeed with its value before first
waiting for the end of all child fibers forked by the effect.

To import and use `awaitAllChildren` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.awaitAllChildren
```

**Signature**

```ts
export declare const awaitAllChildren: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```
