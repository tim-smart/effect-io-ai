Package: `effect`<br />
Module: `Match`<br />

## Match.When

Represents a positive pattern matching case.

A `When` case contains the logic to test if a value matches a specific pattern
and the function to evaluate when the pattern matches. It's the primary
building block for pattern matching conditions.

**Example**

```ts
import { Match } from "effect"

// When creates cases that match specific patterns
const stringMatcher = Match.type<string | number>().pipe(
  Match.when(Match.string, (s: string) => `Got string: ${s}`),
  Match.when(Match.number, (n: number) => `Got number: ${n}`),
  Match.exhaustive
)

console.log(stringMatcher("hello")) // "Got string: hello"
console.log(stringMatcher(42)) // "Got number: 42"
```

**Signature**

```ts
export interface When {
  readonly _tag: "When"
  guard(u: unknown): boolean
  evaluate(input: unknown): any
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L213)

Since v4.0.0