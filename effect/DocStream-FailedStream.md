## FailedStream

Represents a `Doc` that failed to be laid out.

**Signature**

```ts
export interface FailedStream<A> extends DocStream.Variance<A> {
  readonly _tag: "FailedStream"
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocStream.ts#L86)

Since v1.0.0