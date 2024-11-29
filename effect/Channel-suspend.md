# suspend

Lazily constructs a channel from the given side effect.

To import and use `suspend` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.suspend
undefined

**Signature**

```ts
export declare const suspend: <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(
  evaluate: LazyArg<Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>>
) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
```
