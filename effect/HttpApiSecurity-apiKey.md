Package: `@effect/platform`<br />
Module: `HttpApiSecurity`<br />

## HttpApiSecurity.apiKey

Create an API key security scheme.

You can implement some api middleware for this security scheme using
`HttpApiBuilder.middlewareSecurity`.

To set the correct cookie in a handler, you can use
`HttpApiBuilder.securitySetCookie`.

The default value for `in` is "header".

**Signature**

```ts
declare const apiKey: (options: { readonly key: string; readonly in?: "header" | "query" | "cookie" | undefined; }) => ApiKey
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApiSecurity.ts#L121)

Since v1.0.0