Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.Stream

HTTP body variant backed by a stream of `Uint8Array` chunks.

**Signature**

```ts
declare class Stream { constructor(
    stream: Stream_.Stream<globalThis.Uint8Array, unknown>,
    contentType: string,
    contentLength: number | undefined
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L419)

Since v4.0.0