Package: `effect`<br />
Module: `Exit`<br />

## Exit.map

Transforms the success value of an Exit using the given function.

- Use to apply a transformation to the value inside a successful Exit
- Has no effect on failures, which pass through unchanged

Allocates a new Exit if successful. Does not mutate the input.
Supports both curried and direct call styles.

**Example** (Mapping over a success)

```ts
import { Exit } from "effect"

const exit = Exit.succeed(21)
const doubled = Exit.map(exit, (x) => x * 2)
console.log(Exit.isSuccess(doubled) && doubled.value) // 42
```

**See**

- `mapError` to transform the error
- `mapBoth` to transform both success and error

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): <E>(self: Exit<A, E>) => Exit<B, E>; <A, E, B>(self: Exit<A, E>, f: (a: A) => B): Exit<B, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L734)

Since v2.0.0