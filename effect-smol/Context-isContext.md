Package: `effect`<br />
Module: `Context`<br />

## Context.isContext

Checks whether the provided argument is a `Context`.

**When to use**

Use to narrow an unknown value before passing it to APIs that require a
`Context`.

**Details**

This checks the runtime `Context` marker and does not inspect which services
the context contains.

**Gotchas**

This guard only proves that the value is a `Context`; it does not prove that
any specific service is present.

**Example** (Checking for contexts)

```ts
import { Context } from "effect"
import * as assert from "node:assert"

assert.strictEqual(Context.isContext(Context.empty()), true)
```

**See**

- `isKey` for checking service keys
- `isReference` for checking references with defaults

**Signature**

```ts
declare const isContext: (u: unknown) => u is Context<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L566)

Since v2.0.0