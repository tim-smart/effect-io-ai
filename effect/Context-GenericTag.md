Package: `effect`<br />
Module: `Context`<br />

## Context.GenericTag

Creates a new `Tag` instance with an optional key parameter.

**Example**

```ts
import * as assert from "node:assert"
import { Context } from "effect"

assert.strictEqual(Context.GenericTag("PORT").key === Context.GenericTag("PORT").key, true)
```

**Signature**

```ts
declare const GenericTag: <Identifier, Service = Identifier>(key: string) => Tag<Identifier, Service>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L156)

Since v2.0.0