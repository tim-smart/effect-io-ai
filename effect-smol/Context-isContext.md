Package: `effect`<br />
Module: `Context`<br />

## Context.isContext

Checks if the provided argument is a `Context`.

**Example** (Checking for contexts)

```ts
import { Context } from "effect"
import * as assert from "node:assert"

assert.strictEqual(Context.isContext(Context.empty()), true)
```

**Signature**

```ts
declare const isContext: (u: unknown) => u is Context<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L516)

Since v2.0.0