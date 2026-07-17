Package: `effect`<br />
Module: `Equal`<br />

## Equal.symbol

Defines the unique string identifier for the `Equal` interface.

**When to use**

Use when you implement custom equality and need the computed property key for
the equality method.

**Details**

This is a pure constant with no allocation or side effects.

**Example** (Implementing Equal on a class)

```ts
import { Equal, Hash } from "effect"

class UserId implements Equal.Equal {
  constructor(readonly id: string) {}

  [Equal.symbol](that: Equal.Equal): boolean {
    return that instanceof UserId && this.id === that.id
  }

  [Hash.symbol](): number {
    return Hash.string(this.id)
  }
}
```

**See**

- `Equal` — the interface that uses this symbol
- `isEqual` — type guard for `Equal` implementors

**Signature**

```ts
declare const symbol: "~effect/interfaces/Equal"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Equal.ts#L52)

Since v2.0.0