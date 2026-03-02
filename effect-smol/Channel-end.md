Package: `effect`<br />
Module: `Channel`<br />

## Channel.end

Creates a `Channel` that immediately ends with the specified value.

**Example**

```ts
import { Channel } from "effect"

const channel = Channel.end("done")
// Ends immediately with "done", emits nothing
```

**Signature**

```ts
declare const end: <A>(value: A) => Channel<never, never, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L787)

Since v4.0.0