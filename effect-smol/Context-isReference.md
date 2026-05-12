Package: `effect`<br />
Module: `Context`<br />

## Context.isReference

Checks if the provided argument is a `Reference`.

**Example**

```ts
import { Context } from "effect"
import * as assert from "node:assert"

const LoggerRef = Context.Reference("Logger", {
  defaultValue: () => ({ log: (msg: string) => console.log(msg) })
})

assert.strictEqual(Context.isReference(LoggerRef), true)
assert.strictEqual(Context.isReference(Context.Service("Key")), false)
```

**Signature**

```ts
declare const isReference: (u: unknown) => u is Reference<any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L466)

Since v4.0.0