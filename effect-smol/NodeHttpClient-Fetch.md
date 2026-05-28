Package: `@effect/platform-node`<br />
Module: `NodeHttpClient`<br />

## NodeHttpClient.Fetch

Provides a fetch-based HTTP client implementation for Node.js.

**When to use**

Use to access or override the fetch implementation used by the Node
fetch-based HTTP client.

**Signature**

```ts
declare const Fetch: Context.Reference<{ (input: RequestInfo | URL, init?: RequestInit): Promise<Response>; (input: string | URL | Request, init?: RequestInit): Promise<Response>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpClient.ts#L84)

Since v4.0.0