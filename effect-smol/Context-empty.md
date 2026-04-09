Package: `effect`<br />
Module: `Context`<br />

## Context.empty

Returns an empty `Context`.

**Example**

```ts
import { Context } from "effect"
import * as assert from "node:assert"

assert.strictEqual(Context.isContext(Context.empty()), true)
```

**Signature**

```ts
declare const empty: () => Context<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L483)

Since v4.0.0