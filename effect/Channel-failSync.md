# failSync

Constructs a channel that succeeds immediately with the specified lazily
evaluated value.

To import and use `failSync` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.failSync
```

**Signature**

```ts
export declare const failSync: <E>(evaluate: LazyArg<E>) => Channel<never, unknown, E, unknown, never, unknown, never>
```
