# writeAll

Writes a sequence of values to the channel.

To import and use `writeAll` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.writeAll
undefined

**Signature**

```ts
export declare const writeAll: <OutElems extends Array<any>>(...outs: OutElems) => Channel<OutElems[number]>
```
