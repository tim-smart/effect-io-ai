Package: `@effect/platform-node`<br />
Module: `NodeHttpClient`<br />

## NodeHttpClient.makeUndici

Creates an `HttpClient` that sends requests through the current Undici
`Dispatcher`, converts Effect HTTP bodies to Undici bodies, and maps
transport and decode failures to `HttpClientError`.

**Signature**

```ts
declare const makeUndici: Effect.Effect<Client.HttpClient, never, Dispatcher>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpClient.ts#L151)

Since v4.0.0