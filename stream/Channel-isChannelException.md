# isChannelException

Returns `true` if the specified value is an `ChannelException`, `false`
otherwise.

To import and use `isChannelException` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.isChannelException
```

**Signature**

```ts
export declare const isChannelException: (u: unknown) => u is ChannelException<unknown>
```
