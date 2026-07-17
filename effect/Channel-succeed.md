Package: `effect`<br />
Module: `Channel`<br />

## Channel.succeed

Creates a `Channel` that emits a single value and then ends.

**Example** (Creating channels that succeed)

```ts
import { Channel } from "effect"

const channel = Channel.succeed(42)
// Emits: 42
```

**Signature**

```ts
declare const succeed: <A>(value: A) => Channel<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L817)

Since v2.0.0