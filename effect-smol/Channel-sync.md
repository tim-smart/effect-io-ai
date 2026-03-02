Package: `effect`<br />
Module: `Channel`<br />

## Channel.sync

Creates a `Channel` that emits a single value computed by a lazy evaluation.

**Example**

```ts
import { Channel } from "effect"

const channel = Channel.sync(() => Math.random())
// Emits a random number computed when the channel runs
```

**Signature**

```ts
declare const sync: <A>(evaluate: LazyArg<A>) => Channel<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L812)

Since v2.0.0