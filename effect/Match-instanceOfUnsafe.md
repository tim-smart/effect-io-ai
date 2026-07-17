Package: `effect`<br />
Module: `Match`<br />

## Match.instanceOfUnsafe

Checks whether a value is an instance of a constructor without type-safe narrowing.

**When to use**

Use when you need constructor matching to use the unsafe refinement type.

**Details**

This predicate checks if a value is an instance of the specified constructor
but doesn't provide the same type safety guarantees as the regular `instanceOf`.
Use this when you need more flexibility but understand the type safety implications.

**Example** (Matching class instances unsafely)

```ts
import { Match } from "effect"

class CustomError extends Error {
  constructor(message: string, public code: number) {
    super(message)
  }
}

// When you need to match instances but handle type narrowing manually
const handleError = Match.type<unknown>().pipe(
  Match.when(Match.instanceOfUnsafe(CustomError), (err: any) => {
    // Manual type assertion needed
    const customErr = err as CustomError
    return `Custom error ${customErr.code}: ${customErr.message}`
  }),
  Match.orElse(() => "Not a CustomError")
)
```

**See**

- `instanceOf` for type-safe constructor matching

**Signature**

```ts
declare const instanceOfUnsafe: <A extends abstract new (...args: any) => any>(constructor: A) => SafeRefinement<InstanceType<A>, InstanceType<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L1780)

Since v4.0.0