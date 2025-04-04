Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.make

Construct a new `MutableHashSet` from a variable number of values.

Time complexity: **`O(n)`** where n is the number of elements

**Example**

```ts
import { Equal, Hash, MutableHashSet } from "effect"
import assert from "node:assert/strict"

class Character implements Equal.Equal {
  readonly name: string
  readonly trait: string

  constructor(name: string, trait: string) {
    this.name = name
    this.trait = trait
  }

  // Define equality based on name, and trait
  [Equal.symbol](that: Equal.Equal): boolean {
    if (that instanceof Character) {
      return (
        Equal.equals(this.name, that.name) &&
        Equal.equals(this.trait, that.trait)
      )
    }
    return false
  }

  // Generate a hash code based on the sum of the character's name and trait
  [Hash.symbol](): number {
    return Hash.hash(this.name + this.trait)
  }

  static readonly of = (name: string, trait: string): Character => {
    return new Character(name, trait)
  }
}

const mutableCharacterHashSet = MutableHashSet.make(
  Character.of("Alice", "Curious"),
  Character.of("Alice", "Curious"),
  Character.of("White Rabbit", "Always late"),
  Character.of("Mad Hatter", "Tea enthusiast")
)

assert.equal(
  MutableHashSet.has(
    mutableCharacterHashSet,
    Character.of("Alice", "Curious")
  ),
  true
)
assert.equal(
  MutableHashSet.has(
    mutableCharacterHashSet,
    Character.of("Fluffy", "Kind")
  ),
  false
)
```

**See**

- Other `MutableHashSet` constructors are `module:MutableHashSet.fromIterable` `module:MutableHashSet.empty`

**Signature**

```ts
declare const make: <Keys extends ReadonlyArray<unknown>>(...keys: Keys) => MutableHashSet<Keys[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableHashSet.ts#L368)

Since v2.0.0