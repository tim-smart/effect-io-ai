# scoped

Use a scoped effect to emit an output element.

To import and use `scoped` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.scoped
```

**Signature**

```ts
export declare const scoped: <R, E, A>(
  effect: Effect.Effect<R, E, A>
) => Channel<Exclude<R, Scope.Scope>, unknown, unknown, unknown, E, A, unknown>
```
