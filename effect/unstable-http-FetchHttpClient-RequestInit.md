Package: `effect`<br />
Module: `FetchHttpClient`<br />

## FetchHttpClient.RequestInit

Service that contains default fetch options for the fetch-based HTTP client.

**When to use**

Use to provide default credentials, cache, redirect, integrity, or other
fetch options for outgoing HTTP requests.

**Details**

Request-specific method, headers, body, and abort signal are supplied by the client when a request is executed.

**Signature**

```ts
declare class RequestInit
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FetchHttpClient.ts#L49)

Since v4.0.0