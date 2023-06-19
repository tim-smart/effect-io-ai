# orElseResult

Combines this differ and the specified differ to produce a differ that
knows how to diff the sum of their values.

Part of the `Differ` module, imported from `@effect/data/Differ`.

**Signature**

```ts
export declare const orElseResult: {
  <Value2, Patch2>(that: Differ<Value2, Patch2>): <Value, Patch>(
    self: Differ<Value, Patch>
  ) => Differ<Either<Value, Value2>, OrPatch<Value, Value2, Patch, Patch2>>
  <Value, Patch, Value2, Patch2>(self: Differ<Value, Patch>, that: Differ<Value2, Patch2>): Differ<
    Either<Value, Value2>,
    OrPatch<Value, Value2, Patch, Patch2>
  >
}
```
