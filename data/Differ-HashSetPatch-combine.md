# combine

Combines two set patches to produce a new set patch that describes
applying their changes sequentially.

Part of the `HashSetPatch` module, imported from `@effect/data/Differ/HashSetPatch`.

**Signature**

```ts
export declare const combine: {
  <Value>(that: HashSetPatch<Value>): (self: HashSetPatch<Value>) => HashSetPatch<Value>
  <Value>(self: HashSetPatch<Value>, that: HashSetPatch<Value>): HashSetPatch<Value>
}
```
