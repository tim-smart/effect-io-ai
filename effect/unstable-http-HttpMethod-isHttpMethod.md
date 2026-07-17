Package: `effect`<br />
Module: `HttpMethod`<br />

## HttpMethod.isHttpMethod

Checks whether a value is a `HttpMethod`.

**Example** (Checking HTTP method values)

```ts
import { HttpMethod } from "effect/unstable/http"

console.log(HttpMethod.isHttpMethod("GET"))
// true
console.log(HttpMethod.isHttpMethod("get"))
// false
console.log(HttpMethod.isHttpMethod(1))
// false
```

**Signature**

```ts
declare const isHttpMethod: (u: unknown) => u is HttpMethod
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpMethod.ts#L124)

Since v4.0.0