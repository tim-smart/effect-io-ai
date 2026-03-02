Package: `effect`<br />
Module: `Exit`<br />

## Exit.mapBoth

Transforms both the success value and typed error of an Exit.

- Use when you need to remap both channels in one step
- `onSuccess` transforms the value if the Exit is a Success
- `onFailure` transforms the typed error if the Exit is a Failure with a Fail reason
- If the Cause contains only defects or interruptions, the failure passes through unchanged

Allocates a new Exit. Does not mutate the input.
Supports both curried and direct call styles.

**Example** (Mapping both channels)

```ts
import { Exit } from "effect"

const exit = Exit.succeed(42)
const mapped = Exit.mapBoth(exit, {
  onSuccess: (x) => String(x),
  onFailure: (e: string) => new Error(e)
})
console.log(Exit.isSuccess(mapped) && mapped.value) // "42"
```

**See**

- `map` to transform only the success value
- `mapError` to transform only the error

**Signature**

```ts
declare const mapBoth: { <E, E2, A, A2>(options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2; }): (self: Exit<A, E>) => Exit<A2, E2>; <A, E, E2, A2>(self: Exit<A, E>, options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2; }): Exit<A2, E2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L800)

Since v2.0.0