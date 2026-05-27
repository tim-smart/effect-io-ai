Package: `@effect/platform-node`<br />
Module: `NodeHttpClient`<br />

## NodeHttpClient.Fetch

Fetch-based HTTP client implementation for Node.js.

**Signature**

```ts
declare const Fetch: Context.Reference<{ (input: RequestInfo | URL, init?: RequestInit): Promise<Response>; (input: string | URL | Request, init?: RequestInit): Promise<Response>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpClient.ts#L79)

Since v4.0.0