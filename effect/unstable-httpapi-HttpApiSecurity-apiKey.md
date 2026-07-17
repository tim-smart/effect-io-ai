Package: `effect`<br />
Module: `HttpApiSecurity`<br />

## HttpApiSecurity.apiKey

Creates an API key security scheme.

**When to use**

Use to require API key credentials passed through a header, query parameter,
or cookie.

**Details**

Use `HttpApiBuilder.middlewareSecurity` to implement API middleware for this
security scheme.

Use `HttpApiBuilder.securitySetCookie` to set the correct cookie in a
handler. By default, `in` is `"header"`.

**See**

- `bearer` for a Bearer token security scheme
- `basic` for an HTTP Basic security scheme

**Signature**

```ts
declare const apiKey: (options: { readonly key: string; readonly in?: "header" | "query" | "cookie" | undefined; }) => ApiKey
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiSecurity.ts#L177)

Since v4.0.0