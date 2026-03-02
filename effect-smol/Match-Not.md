Package: `effect`<br />
Module: `Match`<br />

## Match.Not

Represents a negative pattern matching case.

A `Not` case contains the logic to test if a value does NOT match a specific
pattern and the function to evaluate when the pattern doesn't match. It's used
for exclusion-based pattern matching.

**Example**

```ts
import { Match } from "effect"

// Not creates cases that exclude specific patterns
const matcher = Match.type<string>().pipe(
  // Match any string except "forbidden"
  Match.not("forbidden", (s) => `Allowed: ${s}`),
  Match.orElse(() => "This string is forbidden")
)

console.log(matcher("hello")) // "Allowed: hello"
console.log(matcher("forbidden")) // "This string is forbidden"
```

**Signature**

```ts
export interface Not {
  readonly _tag: "Not"
  guard(u: unknown): boolean
  evaluate(input: unknown): any
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L244)

Since v4.0.0