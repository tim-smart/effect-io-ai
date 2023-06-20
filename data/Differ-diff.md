# diff

An empty patch that describes no changes.

To import and use `diff` from the "Differ" module:

```ts
import * as Differ from '@effect/data/Differ'

// Can be accessed like this
Differ.diff
```

**Signature**

```ts
export declare const diff: {
  <Value>(oldValue: Value, newValue: Value): <Patch>(differ: Differ<Value, Patch>) => Patch
  <Value, Patch>(differ: Differ<Value, Patch>, oldValue: Value, newValue: Value): Patch
}
```
