Package: `effect`<br />
Module: `Statement`<br />

## Statement.ArrayHelper

Helper segment for compiling an array of values, commonly used to produce
placeholder lists for `IN` clauses.

**Signature**

```ts
export interface ArrayHelper {
  readonly _tag: "ArrayHelper"
  readonly value: ReadonlyArray<unknown | Fragment>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L222)

Since v4.0.0