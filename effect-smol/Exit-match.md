Package: `effect`<br />
Module: `Exit`<br />

## Exit.match

Pattern matches on an Exit, handling both success and failure cases.

- Use for exhaustive handling of both outcomes
- Calls `onSuccess` with the value if the Exit is a Success
- Calls `onFailure` with the Cause if the Exit is a Failure

Supports both curried and direct call styles (data-last and data-first).

**Example** (Matching on an Exit)

```ts
import { Exit } from "effect"

const success = Exit.succeed(42)

const result = Exit.match(success, {
  onSuccess: (value) => `Got: ${value}`,
  onFailure: () => "Failed"
})
console.log(result) // "Got: 42"
```

**See**

- `isSuccess` and `isFailure` for simple boolean checks

**Signature**

```ts
declare const match: { <A, E, X1, X2>(options: { readonly onSuccess: (a: NoInfer<A>) => X1; readonly onFailure: (cause: Cause.Cause<NoInfer<E>>) => X2; }): (self: Exit<A, E>) => X1 | X2; <A, E, X1, X2>(self: Exit<A, E>, options: { readonly onSuccess: (a: A) => X1; readonly onFailure: (cause: Cause.Cause<E>) => X2; }): X1 | X2; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L695)

Since v2.0.0