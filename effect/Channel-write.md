# write

Writes a single value to the channel.

To import and use `write` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.write
```

**Signature**

```ts
export declare const write: <OutElem>(out: OutElem) => Channel<never, unknown, unknown, unknown, never, OutElem, void>
```
