Package: `effect`<br />
Module: `Hash`<br />

## Hash.isHash

Checks if a value implements the Hash interface.

This function determines whether a given value has the Hash symbol property,
indicating that it can provide its own hash value implementation.

**Example**

```ts
import { Hash } from "effect"

class MyHashable implements Hash.Hash {
  [Hash.symbol]() {
    return 42
  }
}

const obj = new MyHashable()
console.log(Hash.isHash(obj)) // true
console.log(Hash.isHash({})) // false
console.log(Hash.isHash("string")) // false
```

**Signature**

```ts
declare const isHash: (u: unknown) => u is Hash
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hash.ts#L249)

Since v2.0.0