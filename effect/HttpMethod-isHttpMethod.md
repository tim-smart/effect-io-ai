Package: `@effect/platform`<br />
Module: `HttpMethod`<br />

## HttpMethod.isHttpMethod

Tests if a value is a `HttpMethod`.

**Example**

```ts
import * as assert from "node:assert"
import { HttpMethod } from "@effect/platform"

assert.deepStrictEqual(HttpMethod.isHttpMethod("GET"), true)
assert.deepStrictEqual(HttpMethod.isHttpMethod("get"), false)
assert.deepStrictEqual(HttpMethod.isHttpMethod(1), false)
```

**Signature**

```ts
declare const isHttpMethod: (u: unknown) => u is HttpMethod
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpMethod.ts#L58)

Since v1.0.0