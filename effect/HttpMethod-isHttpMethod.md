Package: `@effect/platform`<br />
Module: `HttpMethod`<br />

## HttpMethod.isHttpMethod

Tests if a value is a `HttpMethod`.

**Example**

```ts
import { HttpMethod } from "@effect/platform"

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpMethod.ts#L61)

Since v1.0.0