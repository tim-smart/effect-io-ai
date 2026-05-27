Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.setCookiesUnsafe

Sets multiple cookies on an `HttpServerResponse`, throwing if any cookie cannot
be encoded.

**When to use**

Use when cookie errors should be represented as `CookiesError`
failures.

**Signature**

```ts
declare const setCookiesUnsafe: { (cookies: Iterable<readonly [name: string, value: string, options?: Cookies.Cookie["options"]]>): (self: HttpServerResponse) => HttpServerResponse; (self: HttpServerResponse, cookies: Iterable<readonly [name: string, value: string, options?: Cookies.Cookie["options"]]>): HttpServerResponse; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L890)

Since v4.0.0