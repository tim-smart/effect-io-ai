Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isError

Checks whether a value is an `Error`.

When to use:
- You need to guard errors caught from unknown sources.

Behavior:
- Pure; does not mutate input.
- Uses `instanceof Error`.

**Example** (Guard error)

```ts
import { Predicate } from "effect"

const data: unknown = new Error("boom")

console.log(Predicate.isError(data))
```

See also: `isUnknown`

**Signature**

```ts
declare const isError: (input: unknown) => input is Error
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1180)

Since v2.0.0