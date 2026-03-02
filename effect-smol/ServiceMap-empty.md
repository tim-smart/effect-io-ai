Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.empty

Returns an empty `ServiceMap`.

**Example**

```ts
import { ServiceMap } from "effect"
import * as assert from "node:assert"

assert.strictEqual(ServiceMap.isServiceMap(ServiceMap.empty()), true)
```

**Signature**

```ts
declare const empty: () => ServiceMap<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L495)

Since v4.0.0