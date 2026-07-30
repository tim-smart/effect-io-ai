Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.make

Construct a new `HashSet` from a variable number of values.

Time complexity: **`O(n)`** where n is the number of elements

**Example**

```ts
import { Equal, Hash, HashSet, pipe } from "effect"
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

assert.strictEqual(
  Equal.equals(
    HashSet.make(
      Character.of("Alice", "Curious"),
      Character.of("Alice", "Curious"),
      Character.of("White Rabbit", "Always late"),
      Character.of("Mad Hatter", "Tea enthusiast")
    ),
    // Is the same as adding each character to an empty set
    pipe(
      HashSet.empty(),
      HashSet.add(Character.of("Alice", "Curious")),
      HashSet.add(Character.of("Alice", "Curious")), // Alice tried to attend twice!
      HashSet.add(Character.of("White Rabbit", "Always late")),
      HashSet.add(Character.of("Mad Hatter", "Tea enthusiast"))
    )
  ),
  true,
  "`HashSet.make` and `HashSet.empty() + HashSet.add()` should be equal"
)

assert.strictEqual(
  Equal.equals(
    HashSet.make(
      Character.of("Alice", "Curious"),
      Character.of("Alice", "Curious"),
      Character.of("White Rabbit", "Always late"),
      Character.of("Mad Hatter", "Tea enthusiast")
    ),
    HashSet.fromIterable([
      Character.of("Alice", "Curious"),
      Character.of("Alice", "Curious"),
      Character.of("White Rabbit", "Always late"),
      Character.of("Mad Hatter", "Tea enthusiast")
    ])
  ),
  true,
  "`HashSet.make` and `HashSet.fromIterable` should be equal"
)
```

**See**

- Other `HashSet` constructors are `module:HashSet.fromIterable` `module:HashSet.empty`

**Signature**

```ts
declare const make: <As extends ReadonlyArray<any>>(...elements: As) => HashSet<As[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L559)

Since v2.0.0