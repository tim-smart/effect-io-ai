Package: `effect`<br />
Module: `Cause`<br />

## Cause.pretty

Renders a `Cause` as a human-readable string for logging or
debugging.

Delegates to `prettyErrors` to convert each reason to an `Error`,
then joins their stack traces with newlines. Nested `Error.cause` chains
are rendered inline with indentation:

```text
ErrorName: message
    at ...
    at ... {
  [cause]: NestedError: message
      at ...
}
```

Span annotations are appended to the relevant stack frames when available.

**Example** (rendering a cause)

```ts
import { Cause } from "effect"

const cause = Cause.fail("something went wrong")
console.log(Cause.pretty(cause))
// Error: something went wrong
//     at ...
```

**See**

- `prettyErrors` — get the individual `Error` instances

**Signature**

```ts
declare const pretty: <E>(cause: Cause<E>) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1065)

Since v4.0.0