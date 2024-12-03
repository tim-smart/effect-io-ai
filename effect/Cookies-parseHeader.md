# parseHeader

Parse a cookie header into a record of key-value pairs

Adapted from https://github.com/fastify/fastify-cookie under MIT License

To import and use `parseHeader` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Cookies"
// Can be accessed like this
Cookies.parseHeader
```

**Signature**

```ts
export declare function parseHeader(header: string): Record<string, string>
```
