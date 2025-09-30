Package: `effect`<br />
Module: `Context`<br />

## Context.empty

Returns an empty `Context`.

**Example**

```ts
import * as assert from "node:assert"
import { Context } from "effect"

assert.strictEqual(Context.isContext(Context.empty()), true)
```

**Signature**

```ts
declare const empty: () => Context<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L270)

Since v2.0.0