# isHttpMethod

Tests if a value is a `HttpMethod`.

To import and use `isHttpMethod` from the "HttpMethod" module:

```ts
import * as HttpMethod from "@effect/platform/HttpMethod"
// Can be accessed like this
HttpMethod.isHttpMethod
```

**Example**

```ts
import { HttpMethod } from "@effect/platform"

assert.deepStrictEqual(HttpMethod.isHttpMethod("GET"), true)
assert.deepStrictEqual(HttpMethod.isHttpMethod("get"), false)
assert.deepStrictEqual(HttpMethod.isHttpMethod(1), false)
```

**Signature**

```ts
export declare const isHttpMethod: (u: unknown) => u is HttpMethod
```
