# unbounded

Creates an unbounded hub.

To import and use `unbounded` from the "Hub" module:

```ts
import * as Hub from '@effect/io/Hub'

// Can be accessed like this
Hub.unbounded
```

**Signature**

```ts
export declare const unbounded: <A>() => Effect.Effect<never, never, Hub<A>>
```
