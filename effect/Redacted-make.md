Package: `effect`<br />
Module: `Redacted`<br />

## Redacted.make

This function creates a `Redacted<A>` instance from a given value `A`,
securely hiding its content.

**Example**

```ts
import { Redacted } from "effect"

const API_KEY = Redacted.make("1234567890")
```

**Signature**

```ts
declare const make: <A>(value: A) => Redacted<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Redacted.ts#L75)

Since v3.3.0