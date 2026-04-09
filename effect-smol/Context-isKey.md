Package: `effect`<br />
Module: `Context`<br />

## Context.isKey

Checks if the provided argument is a `Key`.

**Example**

```ts
import { Context } from "effect"
import * as assert from "node:assert"

assert.strictEqual(Context.isKey(Context.Service("Service")), true)
```

**Signature**

```ts
declare const isKey: (u: unknown) => u is Key<any, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L446)

Since v4.0.0