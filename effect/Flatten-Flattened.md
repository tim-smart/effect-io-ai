## Flattened

Represents a `FlattenResult` where `A` is likely flatter than the input.

**Signature**

```ts
export interface Flattened<A> extends Flatten.Variance<A> {
  readonly _tag: "Flattened"
  readonly value: A
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Flatten.ts#L68)

Since v1.0.0