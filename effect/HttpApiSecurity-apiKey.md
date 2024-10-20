# apiKey

Create an API key security scheme.

You can implement some api middleware for this security scheme using
`HttpApiBuilder.middlewareSecurity`.

To set the correct cookie in a handler, you can use
`HttpApiBuilder.securitySetCookie`.

To import and use `apiKey` from the "HttpApiSecurity" module:

```ts
import * as HttpApiSecurity from "@effect/platform/HttpApiSecurity"
// Can be accessed like this
HttpApiSecurity.apiKey
```

**Signature**

```ts
export declare const apiKey: (options: {
  readonly key: string
  readonly in?: "header" | "query" | "cookie" | undefined
}) => ApiKey
```
