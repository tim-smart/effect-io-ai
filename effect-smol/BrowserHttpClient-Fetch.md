Package: `@effect/platform-browser`<br />
Module: `BrowserHttpClient`<br />

## BrowserHttpClient.Fetch

Context reference for the `fetch` implementation used by the fetch-based HTTP client.

**Signature**

```ts
declare const Fetch: Context.Reference<{ (input: RequestInfo | URL, init?: RequestInit): Promise<Response>; (input: string | URL | Request, init?: RequestInit): Promise<Response>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserHttpClient.ts#L45)

Since v4.0.0