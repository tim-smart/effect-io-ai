Package: `effect`<br />
Module: `Channel`<br />

## Channel.sync

Creates a `Channel` that emits a single value computed by a lazy evaluation.

**Example** (Computing values lazily)

```ts
import { Channel } from "effect"

let requests = 0

const channel = Channel.sync(() => {
  requests += 1
  return `request-${requests}`
})
// Emits "request-1" when the channel runs for the first time
```

**Signature**

```ts
declare const sync: <A>(evaluate: LazyArg<A>) => Channel<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L865)

Since v2.0.0