Package: `effect`<br />
Module: `HttpServerError`<br />

## HttpServerError.ClientAbort

Context annotation used to mark an interrupt as caused by the client aborting
the request.

**Details**

`causeResponse` uses this annotation to map a pure client abort to a `499`
response instead of a server abort response.

**Signature**

```ts
declare class ClientAbort
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerError.ts#L255)

Since v4.0.0