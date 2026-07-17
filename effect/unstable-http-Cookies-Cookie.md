Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.Cookie

HTTP cookie value with its decoded value, encoded value, and optional cookie
attributes such as domain, path, expiration, security, and same-site settings.

**Signature**

```ts
export interface Cookie extends Inspectable.Inspectable {
  readonly [CookieTypeId]: typeof CookieTypeId
  readonly name: string
  readonly value: string
  readonly valueEncoded: string
  readonly options?: {
    readonly domain?: string | undefined
    readonly expires?: Date | undefined
    readonly maxAge?: Duration.Input | undefined
    readonly path?: string | undefined
    readonly priority?: "low" | "medium" | "high" | undefined
    readonly httpOnly?: boolean | undefined
    readonly secure?: boolean | undefined
    readonly partitioned?: boolean | undefined
    readonly sameSite?: "lax" | "strict" | "none" | undefined
  } | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cookies.ts#L106)

Since v4.0.0