# make

This function creates a `Redacted<A>` instance from a given value `A`,
securely hiding its content.

To import and use `make` from the "Redacted" module:

ts
import \* as Redacted from "effect/Redacted"
// Can be accessed like this
Redacted.make
undefined

**Example**

```ts
import { Redacted } from "effect"

const API_KEY = Redacted.make("1234567890")
```

**Signature**

```ts
export declare const make: <A>(value: A) => Redacted<A>
```
