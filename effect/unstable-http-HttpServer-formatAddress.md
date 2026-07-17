Package: `effect`<br />
Module: `HttpServer`<br />

## HttpServer.formatAddress

Formats a server address as a display string.

**Details**

TCP addresses are formatted as `http://host:port`; Unix socket addresses are
formatted as `unix://path`.

**Signature**

```ts
declare const formatAddress: (address: Address) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServer.ts#L216)

Since v4.0.0