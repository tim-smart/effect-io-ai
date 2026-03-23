Package: `effect`<br />
Module: `Cause`<br />

## Cause.findDefect

Returns the first defect value (`unknown`) from a cause.
Returns `Filter.fail` with the original cause when no `Die` reason
is found.

Use `findDie` if you need the full `Die` reason (including
annotations).

**Example** (extracting the first defect)

```ts
import { Cause, Result } from "effect"

const result = Cause.findDefect(Cause.die("defect"))
if (!Result.isFailure(result)) {
  console.log(result.success) // "defect"
}
```

**See**

- `findDie` — extract the full `Die` reason
- `findError` — extract the first typed error

**Signature**

```ts
declare const findDefect: <E>(self: Cause<E>) => Result.Result<unknown, Cause<E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L895)

Since v4.0.0