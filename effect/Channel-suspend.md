# suspend

Lazily constructs a channel from the given side effect.

To import and use `suspend` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.suspend
```

**Signature**

```ts
export declare const suspend: <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
  evaluate: LazyArg<Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>>
) => Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
```
