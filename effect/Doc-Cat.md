Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.Cat

Represents the concatenation of two documents.

**Signature**

```ts
export interface Cat<A> extends Doc.Variance<A> {
  readonly _tag: "Cat"
  readonly left: Doc<A>
  readonly right: Doc<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L216)

Since v1.0.0