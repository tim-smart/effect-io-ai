# failCauseSync

Constructs a channel that succeeds immediately with the specified lazily
evaluated `Cause`.

To import and use `failCauseSync` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.failCauseSync
```

**Signature**

```ts
export declare const failCauseSync: <E>(
  evaluate: LazyArg<Cause.Cause<E>>
) => Channel<never, unknown, E, unknown, never, unknown>
```
