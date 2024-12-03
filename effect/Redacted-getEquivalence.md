# getEquivalence

Generates an equivalence relation for `Redacted<A>` values based on an
equivalence relation for the underlying values `A`. This function is useful
for comparing `Redacted` instances without exposing their contents.

To import and use `getEquivalence` from the "Redacted" module:

```ts
import * as Redacted from "effect/Redacted"
// Can be accessed like this
Redacted.getEquivalence
```

**Example**

```ts
import { Redacted, Equivalence } from "effect"

const API_KEY1 = Redacted.make("1234567890")
const API_KEY2 = Redacted.make("1-34567890")
const API_KEY3 = Redacted.make("1234567890")

const equivalence = Redacted.getEquivalence(Equivalence.string)

assert.equal(equivalence(API_KEY1, API_KEY2), false)
assert.equal(equivalence(API_KEY1, API_KEY3), true)
```

**Signature**

```ts
export declare const getEquivalence: <A>(
  isEquivalent: Equivalence.Equivalence<A>
) => Equivalence.Equivalence<Redacted<A>>
```
