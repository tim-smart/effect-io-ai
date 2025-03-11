## PushAnnotationStream

Represents the addition of an annotation of type `A` to a `Doc`.

**Signature**

```ts
export interface PushAnnotationStream<A> extends DocStream.Variance<A> {
  readonly _tag: "PushAnnotationStream"
  readonly annotation: A
  readonly stream: DocStream<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocStream.ts#L144)

Since v1.0.0