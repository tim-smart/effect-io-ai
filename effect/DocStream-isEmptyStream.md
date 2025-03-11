## isEmptyStream

Returns `true` if the specified `DocStream` is a `EmptyStream`, `false` otherwise.

**Signature**

```ts
declare const isEmptyStream: <A>(self: DocStream<A>) => self is EmptyStream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocStream.ts#L187)

Since v1.0.0