## withReturnType

Ensures that all branches of a matcher return a specific type.

**Details**

This function enforces a consistent return type across all pattern-matching
branches. By specifying a return type, TypeScript will check that every
matching condition produces a value of the expected type.

**Important:** This function must be the first step in the matcher pipeline.
If used later, TypeScript will not enforce type consistency correctly.

**Example**

```ts
// Title: Validating Return Type Consistency
import { Match } from "effect"

const match = Match.type<{ a: number } | { b: string }>().pipe(
  // Ensure all branches return a string
  Match.withReturnType<string>(),
  // ❌ Type error: 'number' is not assignable to type 'string'
  // @ts-expect-error
  Match.when({ a: Match.number }, (_) => _.a),
  // ✅ Correct: returns a string
  Match.when({ b: Match.string }, (_) => _.b),
  Match.exhaustive
)
```

**Signature**

```ts
declare const withReturnType: <Ret>() => <I, F, R, A, Pr, _>(self: Matcher<I, F, R, A, Pr, _>) => [Ret] extends [[A] extends [never] ? any : A] ? Matcher<I, F, R, A, Pr, Ret> : "withReturnType constraint does not extend Result type"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L299)

Since v1.0.0