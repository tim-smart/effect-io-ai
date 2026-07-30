Package: `@effect/printer`<br />
Module: `DocStream`<br />

## DocStream.PopAnnotationStream

Represents the removal of a previously pushed annotation from a `Doc`.

**Signature**

```ts
export interface PopAnnotationStream<A> extends DocStream.Variance<A> {
  readonly _tag: "PopAnnotationStream"
  readonly stream: DocStream<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocStream.ts#L156)

Since v1.0.0