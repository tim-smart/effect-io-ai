# diff

An empty patch that describes no changes.

Part of the `Differ` module, imported from `@effect/data/Differ`.

**Signature**

```ts
export declare const diff: {
  <Value>(oldValue: Value, newValue: Value): <Patch>(differ: Differ<Value, Patch>) => Patch
  <Value, Patch>(differ: Differ<Value, Patch>, oldValue: Value, newValue: Value): Patch
}
```
