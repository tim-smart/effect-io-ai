Package: `@effect/printer`<br />
Module: `DocStream`<br />

## DocStream.EmptyStream

Represents the an empty `Doc`.

**Signature**

```ts
export interface EmptyStream<A> extends DocStream.Variance<A> {
  readonly _tag: "EmptyStream"
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocStream.ts#L96)

Since v1.0.0