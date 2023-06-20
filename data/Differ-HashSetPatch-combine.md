# combine

Combines two set patches to produce a new set patch that describes
applying their changes sequentially.

To import and use `combine` from the "HashSetPatch" module:

```ts
import * as HashSetPatch from '@effect/data/Differ/HashSetPatch'

// Can be accessed like this
HashSetPatch.combine
```

**Signature**

```ts
export declare const combine: {
  <Value>(that: HashSetPatch<Value>): (self: HashSetPatch<Value>) => HashSetPatch<Value>
  <Value>(self: HashSetPatch<Value>, that: HashSetPatch<Value>): HashSetPatch<Value>
}
```
