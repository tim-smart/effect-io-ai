Package: `effect`<br />
Module: `Match`<br />

## Match.Types.PatternBase

Defines the structure for complex object and array patterns.

This type represents patterns that can match against complex data structures
like objects and arrays. It supports nested pattern matching and partial
object matching, enabling sophisticated pattern compositions.

**Example**

```ts
import { Match } from "effect"

// PatternBase enables complex object patterns
type UserPattern = Match.Types.PatternBase<{
  name: string
  age: number
  role: "admin" | "user"
}>
// Allows: { name?: string | Predicate, age?: number | Predicate, ... }

// Example usage:
Match.value({ name: "Alice", age: 30, role: "admin" as const }).pipe(
  Match.when(
    { age: (n: number) => n >= 18, role: "admin" },
    (user: { name: string; age: number; role: "admin" }) =>
      `Admin: ${user.name}`
  ),
  Match.orElse(() => "Not an adult admin")
)
```

**Signature**

```ts
type PatternBase<A> = A extends ReadonlyArray<infer _T> ? ReadonlyArray<any> | PatternPrimitive<A>
    : A extends Record<string, any> ? Partial<
        { [K in keyof A]: PatternPrimitive<A[K] & {}> | PatternBase<A[K] & {}> }
      >
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L2074)

Since v4.0.0