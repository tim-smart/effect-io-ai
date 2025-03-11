## AlreadyFlat

Represents a `FlattenResult` where the input was already flat.

**Signature**

```ts
export interface AlreadyFlat<A> extends Flatten.Variance<A> {
  readonly _tag: "AlreadyFlat"
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Flatten.ts#L79)

Since v1.0.0