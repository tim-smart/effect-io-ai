Package: `effect`<br />
Module: `Brand`<br />

## Brand.nominal

This function returns a `Brand.Constructor` that **does not apply any runtime checks**, it just returns the provided value.
It can be used to create nominal types that allow distinguishing between two values of the same type but with different meanings.

If you also want to perform some validation, see `refined`.

**Example**

```ts
import * as assert from "node:assert"
import { Brand } from "effect"

type UserId = number & Brand.Brand<"UserId">

const UserId = Brand.nominal<UserId>()

assert.strictEqual(UserId(1), 1)
```

**Signature**

```ts
declare const nominal: <A extends Brand<any>>() => Brand.Constructor<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Brand.ts#L264)

Since v2.0.0