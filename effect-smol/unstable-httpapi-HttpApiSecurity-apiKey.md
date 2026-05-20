Package: `effect`<br />
Module: `HttpApiSecurity`<br />

## HttpApiSecurity.apiKey

Creates an API key security scheme.

**When to use**

Use `HttpApiBuilder.middlewareSecurity` to implement API middleware for this
security scheme.

**Details**

Use `HttpApiBuilder.securitySetCookie` to set the correct cookie in a
handler. By default, `in` is `"header"`.

**Signature**

```ts
declare const apiKey: (options: { readonly key: string; readonly in?: "header" | "query" | "cookie" | undefined; }) => ApiKey
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSecurity.ts#L154)

Since v4.0.0