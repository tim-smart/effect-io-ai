# zip

Combines this differ and the specified differ to produce a new differ that
knows how to diff the product of their values.

Part of the `Differ` module, imported from `@effect/data/Differ`.

**Signature**

```ts
export declare const zip: {
  <Value2, Patch2>(that: Differ<Value2, Patch2>): <Value, Patch>(
    self: Differ<Value, Patch>
  ) => Differ<readonly [Value, Value2], readonly [Patch, Patch2]>
  <Value, Patch, Value2, Patch2>(self: Differ<Value, Patch>, that: Differ<Value2, Patch2>): Differ<
    readonly [Value, Value2],
    readonly [Patch, Patch2]
  >
}
```
