Package: `effect`<br />
Module: `Channel`<br />

## Channel.toTransform

Converts a `Channel` back to its underlying transformation function.

**Example**

```ts
import { Channel } from "effect"

const channel = Channel.succeed(42)
const transform = Channel.toTransform(channel)
// transform can now be used directly
```

**Signature**

```ts
declare const toTransform: <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(channel: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => (upstream: Pull.Pull<InElem, InErr, InDone>, scope: Scope.Scope) => Effect.Effect<Pull.Pull<OutElem, OutErr, OutDone>, never, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L406)

Since v4.0.0