Package: `effect`<br />
Module: `Context`<br />

## Context.isContext

Checks if the provided argument is a `Context`.

**Example**

```ts
import * as assert from "node:assert"
import { Context } from "effect"

assert.strictEqual(Context.isContext(Context.empty()), true)
```

**Signature**

```ts
declare const isContext: (input: unknown) => input is Context<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L204)

Since v2.0.0