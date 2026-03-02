Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.has

Checks if the HashSet contains the specified value.

**Example**

```ts
import * as HashSet from "effect/HashSet" // false

// Works with any type that implements Equal
import { Equal, Hash } from "effect"

const set = HashSet.make("apple", "banana", "cherry")

console.log(HashSet.has(set, "apple")) // true
console.log(HashSet.has(set, "grape"))

class Person implements Equal.Equal {
  constructor(readonly name: string) {}

  [Equal.symbol](other: unknown) {
    return other instanceof Person && this.name === other.name
  }

  [Hash.symbol](): number {
    return Hash.string(this.name)
  }
}

const people = HashSet.make(new Person("Alice"), new Person("Bob"))
console.log(HashSet.has(people, new Person("Alice"))) // true
```

**Signature**

```ts
declare const has: { <V>(value: V): (self: HashSet<V>) => boolean; <V>(self: HashSet<V>, value: V): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L244)

Since v2.0.0