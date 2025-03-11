## isTag

Checks if the provided argument is a `Tag`.

**Example**

```ts
import * as assert from "node:assert"
import { Context } from "effect"

assert.strictEqual(Context.isTag(Context.GenericTag("Tag")), true)
```

**Signature**

```ts
declare const isTag: (input: unknown) => input is Tag<any, any>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L220)

Since v2.0.0