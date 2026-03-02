Package: `effect`<br />
Module: `Match`<br />

## Match.Case

Represents a single pattern matching case.

A `Case` can be either a positive match (`When`) or a negative match (`Not`).
Cases are the building blocks of pattern matching logic and determine
how values are tested and transformed.

**Example**

```ts
import type { Match } from "effect"

// Case is a union type representing pattern matching cases
// It combines When (positive) and Not (negative) matching logic

// When you write this:
// Match.when(pattern, handler)  // Creates a When case
// Match.not(pattern, handler)   // Creates a Not case

// The Match module internally uses Case = When | Not
type MyCaseType = Match.Case // When | Not
```

**Signature**

```ts
type Case = When | Not
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L186)

Since v4.0.0