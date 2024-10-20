# failCause

Constructs a channel that fails immediately with the specified `Cause`.

To import and use `failCause` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.failCause
```

**Signature**

```ts
export declare const failCause: <E>(cause: Cause.Cause<E>) => Channel<never, unknown, E, unknown, never, unknown>
```
