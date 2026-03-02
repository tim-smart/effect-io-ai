Package: `effect`<br />
Module: `Channel`<br />

## Channel.suspend

Creates a `Channel` that lazily evaluates to another channel.

**Example**

```ts
import { Channel } from "effect"

const channel = Channel.suspend(() => Channel.succeed(42))
// The inner channel is not created until the suspended channel is run
```

**Signature**

```ts
declare const suspend: <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(evaluate: LazyArg<Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>>) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L512)

Since v2.0.0