# daemonChildren

Returns a new workflow that will not supervise any fibers forked by this
workflow.

To import and use `daemonChildren` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.daemonChildren
```

**Signature**

```ts
export declare const daemonChildren: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```
