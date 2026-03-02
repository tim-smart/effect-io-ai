Package: `effect`<br />
Module: `Hash`<br />

## Hash.Hash

A type that represents an object that can be hashed.

Objects implementing this interface provide a method to compute their hash value,
which is used for efficient comparison and storage operations.

**Example**

```ts
import { Hash } from "effect"

class MyClass implements Hash.Hash {
  constructor(private value: number) {}

  [Hash.symbol](): number {
    return Hash.hash(this.value)
  }
}

const instance = new MyClass(42)
console.log(instance[Hash.symbol]()) // hash value of 42
```

**Signature**

```ts
export interface Hash {
  [symbol](): number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hash.ts#L46)

Since v2.0.0