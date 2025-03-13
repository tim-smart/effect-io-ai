Package: `@effect/platform`<br />
Module: `Cookies`<br />

## Cookies.unsafeSetAll

Add multiple cookies to a Cookies object, throwing an error if invalid

**Signature**

```ts
declare const unsafeSetAll: { (cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): (self: Cookies) => Cookies; (self: Cookies, cookies: Iterable<readonly [name: string, value: string, options?: Cookie["options"]]>): Cookies; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Cookies.ts#L569)

Since v1.0.0