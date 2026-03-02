Package: `effect`<br />
Module: `Channel`<br />

## Channel.succeed

Creates a `Channel` that emits a single value and then ends.

**Example**

```ts
import { Channel } from "effect"

const channel = Channel.succeed(42)
// Emits: 42
```

**Signature**

```ts
declare const succeed: <A>(value: A) => Channel<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L771)

Since v2.0.0