Package: `@effect/platform-bun`<br />
Module: `BunMultipart`<br />

## BunMultipart.stream

Parses a Bun `Request` body as multipart data and returns a stream of multipart parts.

**Signature**

```ts
declare const stream: (source: Request) => Stream.Stream<Multipart.Part, Multipart.MultipartError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunMultipart.ts#L25)

Since v4.0.0