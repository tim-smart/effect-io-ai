Package: `@effect/platform-node`<br />
Module: `NodeMultipart`<br />

## NodeMultipart.stream

Parses multipart data from a Node readable request body and headers into a
stream of `Multipart.Part` values, converting parser failures to
`MultipartError`.

**Signature**

```ts
declare const stream: (source: Readable, headers: IncomingHttpHeaders) => Stream.Stream<Multipart.Part, Multipart.MultipartError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeMultipart.ts#L35)

Since v4.0.0