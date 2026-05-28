Package: `@effect/platform-browser`<br />
Module: `BrowserHttpClient`<br />

## BrowserHttpClient.CurrentXHRResponseType

Context reference for the `XMLHttpRequest.responseType` used by the browser XHR HTTP client, defaulting to `"text"`.

**When to use**

Use when XHR-backed HTTP requests need to receive response bodies as text or
as raw `ArrayBuffer` values.

**See**

- `XHRResponseType` for the allowed response body modes
- `withXHRArrayBuffer` for scoping XHR response handling to `ArrayBuffer`

**Signature**

```ts
declare const CurrentXHRResponseType: Context.Reference<XHRResponseType>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserHttpClient.ts#L113)

Since v4.0.0