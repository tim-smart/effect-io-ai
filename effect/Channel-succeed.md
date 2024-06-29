# succeed

Constructs a channel that succeeds immediately with the specified value.

To import and use `succeed` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.succeed
```

**Signature**

```ts
export declare const succeed: <A>(value: A) => Channel<never, unknown, never, unknown, A, unknown, never>
```
