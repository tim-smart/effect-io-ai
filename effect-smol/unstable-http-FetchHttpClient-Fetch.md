Package: `effect`<br />
Module: `FetchHttpClient`<br />

## FetchHttpClient.Fetch

Context reference for the `fetch` implementation used by the fetch-based HTTP client.

**Details**

Defaults to `globalThis.fetch`.

**Signature**

```ts
declare const Fetch: Context.Reference<{ (input: RequestInfo | URL, init?: globalThis.RequestInit): Promise<Response>; (input: string | URL | Request, init?: globalThis.RequestInit): Promise<Response>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FetchHttpClient.ts#L30)

Since v4.0.0