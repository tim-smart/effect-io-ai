# context

Accesses the whole context of the channel.

To import and use `context` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.context
```

**Signature**

```ts
export declare const context: <Env>() => Channel<Env, unknown, unknown, unknown, never, never, Context.Context<Env>>
```
