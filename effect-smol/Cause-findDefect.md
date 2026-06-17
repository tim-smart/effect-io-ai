Package: `effect`<br />
Module: `Cause`<br />

## Cause.findDefect

Returns a `Result` whose success value is the first defect value from a
`Die` reason in the cause. If the cause has no `Die` reason, the
failure value is the original cause.

**When to use**

Use when you need the first defect value from a `Cause` as a `Result`,
without the full `Die` reason.

**Example** (Extracting the first defect)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L952)

Since v4.0.0