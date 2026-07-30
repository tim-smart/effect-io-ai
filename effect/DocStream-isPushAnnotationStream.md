Package: `@effect/printer`<br />
Module: `DocStream`<br />

## DocStream.isPushAnnotationStream

Returns `true` if the specified `DocStream` is a `PushAnnotationStream`, `false` otherwise.

**Signature**

```ts
declare const isPushAnnotationStream: <A>(self: DocStream<A>) => self is PushAnnotationStream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocStream.ts#L219)

Since v1.0.0