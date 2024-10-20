# bearer

Create an Bearer token security scheme.

You can implement some api middleware for this security scheme using
`HttpApiBuilder.middlewareSecurity`.

To import and use `bearer` from the "HttpApiSecurity" module:

```ts
import * as HttpApiSecurity from "@effect/platform/HttpApiSecurity"
// Can be accessed like this
HttpApiSecurity.bearer
```

**Signature**

```ts
export declare const bearer: Bearer
```
