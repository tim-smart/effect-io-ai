# isRequest

Returns `true` if the specified value is a `Request`, `false` otherwise.

To import and use `isRequest` from the "Request" module:

ts
import \* as Request from "effect/Request"
// Can be accessed like this
Request.isRequest
undefined

**Signature**

```ts
export declare const isRequest: (u: unknown) => u is Request<unknown, unknown>
```
