# unbounded

Creates a new unbounded `Queue`.

To import and use `unbounded` from the "Queue" module:

```ts
import * as Queue from "effect/Queue"
// Can be accessed like this
Queue.unbounded
```

**Signature**

```ts
export declare const unbounded: <A>() => Effect.Effect<Queue<A>, never, never>
```
