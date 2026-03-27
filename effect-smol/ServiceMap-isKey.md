Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.isKey

Checks if the provided argument is a `Key`.

**Example**

```ts
import { ServiceMap } from "effect"
import * as assert from "node:assert"

assert.strictEqual(ServiceMap.isKey(ServiceMap.Service("Service")), true)
```

**Signature**

```ts
declare const isKey: (u: unknown) => u is Key<any, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L446)

Since v4.0.0