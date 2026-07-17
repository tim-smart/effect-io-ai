Package: `effect`<br />
Module: `Equal`<br />

## Equal.Equal

The interface for types that define their own equality logic.

**When to use**

Use when you need value-based equality for a class (e.g. domain IDs,
  coordinates, money values).
- When your type will be stored in `HashMap` or `HashSet`.
- When the default structural comparison is too broad or too narrow for
  your type.

**Details**

Any object that implements both `[Equal.symbol]` (equality) and
`[Hash.symbol]` (hashing) is recognized by `equals` and by hash-based
collections such as `HashMap` and `HashSet`.

- Extends `Hash.Hash`, so implementors **must** also provide `[Hash.symbol]`.
- The hash contract: if `a[Equal.symbol](b)` returns `true`, then
  `Hash.hash(a)` must equal `Hash.hash(b)`.
- `equals` delegates to this method when both operands implement it.
  If only one operand implements `Equal`, they are considered unequal.

**Example** (Comparing coordinates by value)

```ts
import { Equal, Hash } from "effect"

class Coordinate implements Equal.Equal {
  constructor(readonly x: number, readonly y: number) {}

  [Equal.symbol](that: Equal.Equal): boolean {
    return that instanceof Coordinate &&
      this.x === that.x &&
      this.y === that.y
  }

  [Hash.symbol](): number {
    return Hash.string(`${this.x},${this.y}`)
  }
}

console.log(Equal.equals(new Coordinate(1, 2), new Coordinate(1, 2))) // true
console.log(Equal.equals(new Coordinate(1, 2), new Coordinate(3, 4))) // false
```

**See**

- `symbol` — the property key used by the equality method
- `equals` — the main comparison function
- `isEqual` — type guard for `Equal` implementors

**Signature**

```ts
export interface Equal extends Hash.Hash {
  [symbol](that: Equal): boolean
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Equal.ts#L106)

Since v2.0.0