Package: `@effect/printer`<br />
Module: `DocStream`<br />

## DocStream.isFailedStream

Returns `true` if the specified `DocStream` is a `FailedStream`, `false` otherwise.

**Signature**

```ts
declare const isFailedStream: <A>(self: DocStream<A>) => self is FailedStream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocStream.ts#L179)

Since v1.0.0