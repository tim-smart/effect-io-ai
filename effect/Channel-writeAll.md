# writeAll

Writes a sequence of values to the channel.

To import and use `writeAll` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.writeAll
```

**Signature**

```ts
export declare const writeAll: <OutElems extends any[]>(
  ...outs: OutElems
) => Channel<never, unknown, unknown, unknown, never, OutElems[number], void>
```
