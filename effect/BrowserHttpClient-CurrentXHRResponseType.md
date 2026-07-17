Package: `@effect/platform-browser`<br />
Module: `BrowserHttpClient`<br />

## BrowserHttpClient.CurrentXHRResponseType

Context reference for the `XMLHttpRequest.responseType` used by the browser XHR HTTP client, defaulting to `"text"`.

**When to use**

Use when you need XHR-backed HTTP requests to receive response bodies as text
or raw `ArrayBuffer` values.

**See**

- `XHRResponseType` for the allowed response body modes
- `withXHRArrayBuffer` for scoping XHR response handling to `ArrayBuffer`

**Signature**

```ts
declare const CurrentXHRResponseType: Context.Reference<XHRResponseType>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserHttpClient.ts#L93)

Since v4.0.0