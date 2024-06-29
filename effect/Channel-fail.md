# fail

Constructs a channel that fails immediately with the specified error.

To import and use `fail` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.fail
```

**Signature**

```ts
export declare const fail: <E>(error: E) => Channel<never, unknown, E, unknown, never, unknown, never>
```
