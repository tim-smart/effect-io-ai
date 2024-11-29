# sync

Constructs a channel that succeeds immediately with the specified lazy value.

To import and use `sync` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.sync
undefined

**Signature**

```ts
export declare const sync: <OutDone>(
  evaluate: LazyArg<OutDone>
) => Channel<never, unknown, never, unknown, OutDone, unknown>
```
