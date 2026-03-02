Package: `effect`<br />
Module: `Cause`<br />

## Cause.prettyErrors

Converts a `Cause` into an `Array<Error>` suitable for logging or
rethrowing.

Each `Fail` and `Die` reason is converted into a standard
`Error`:

- **Objects / Error instances** — `message`, `name`, `stack`, and `cause`
  are preserved. Extra enumerable properties are copied. Stack traces are
  cleaned up and enriched with span annotations when available.
- **Strings** — used directly as the `Error` message.
- **Other primitives** (`null`, `undefined`, numbers, …) — wrapped in an
  `Error` with message `"Unknown error: <value>"`.

`Interrupt` reasons are collected separately. If the cause contains
**only** interrupts (no `Fail` or `Die`), a single `InterruptError` is
returned whose `cause` lists the interrupting fiber IDs.

**Example** (converting a cause to errors)

```ts
import { Cause } from "effect"

const cause = Cause.fail(new Error("boom"))
const errors = Cause.prettyErrors(cause)
console.log(errors[0].message) // "boom"
```

**See**

- `pretty` — renders the cause as a single string
- `squash` — lossy collapse to a single thrown value

**Signature**

```ts
declare const prettyErrors: <E>(self: Cause<E>) => Array<Error>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1027)

Since v4.0.0