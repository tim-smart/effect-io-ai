Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.isServiceMap

Checks if the provided argument is a `ServiceMap`.

**Example**

```ts
import { ServiceMap } from "effect"
import * as assert from "node:assert"

assert.strictEqual(ServiceMap.isServiceMap(ServiceMap.empty()), true)
```

**Signature**

```ts
declare const isServiceMap: (u: unknown) => u is ServiceMap<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L445)

Since v4.0.0