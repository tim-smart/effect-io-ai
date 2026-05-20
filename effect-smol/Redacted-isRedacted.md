Package: `effect`<br />
Module: `Redacted`<br />

## Redacted.isRedacted

Returns `true` if a value is a `Redacted` wrapper.

**Details**

When this function returns `true`, TypeScript narrows the value to
`Redacted<unknown>`.

**Example** (Checking for redacted values)

```ts
import { Redacted } from "effect"

const secret = Redacted.make("my-secret")
const plainString = "not-secret"

console.log(Redacted.isRedacted(secret)) // true
console.log(Redacted.isRedacted(plainString)) // false
```

**Signature**

```ts
declare const isRedacted: (u: unknown) => u is Redacted<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redacted.ts#L132)

Since v3.3.0