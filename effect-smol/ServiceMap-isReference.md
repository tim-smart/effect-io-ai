Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.isReference

Checks if the provided argument is a `Reference`.

**Example**

```ts
import { ServiceMap } from "effect"
import * as assert from "node:assert"

const LoggerRef = ServiceMap.Reference("Logger", {
  defaultValue: () => ({ log: (msg: string) => console.log(msg) })
})

assert.strictEqual(ServiceMap.isReference(LoggerRef), true)
assert.strictEqual(ServiceMap.isReference(ServiceMap.Service("Key")), false)
```

**Signature**

```ts
declare const isReference: (u: unknown) => u is Reference<any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L467)

Since v4.0.0