Package: `@effect/printer`<br />
Module: `Flatten`<br />

## Flatten.NeverFlat

Represents a `FlattenResult` where the input cannot be flattened.

**Signature**

```ts
export interface NeverFlat<A> extends Flatten.Variance<A> {
  readonly _tag: "NeverFlat"
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Flatten.ts#L89)

Since v1.0.0