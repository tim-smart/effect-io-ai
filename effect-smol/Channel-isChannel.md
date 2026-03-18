Package: `effect`<br />
Module: `Channel`<br />

## Channel.isChannel

Tests if a value is a `Channel`.

**Example**

```ts
import { Channel } from "effect"

const channel = Channel.succeed(42)
console.log(Channel.isChannel(channel)) // true
console.log(Channel.isChannel("not a channel")) // false
```

**Signature**

```ts
declare const isChannel: (u: unknown) => u is Channel<unknown, unknown, unknown, unknown, unknown, unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L122)

Since v3.5.4