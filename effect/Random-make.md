# make

Constructs the `Random` service, seeding the pseudo-random number generator
with an hash of the specified seed.
This constructor is useful for generating predictable sequences of random values for specific use cases.

Example uses:

- Generating random UI data for visual tests.
- Creating data that needs to change daily but remain the same throughout a single day, such as using a date as the seed.

To import and use `make` from the "Random" module:

```ts
import * as Random from "effect/Random"
// Can be accessed like this
Random.make
```

**Example**

```ts
import { Effect, Random } from "effect"

const random1 = Random.make("myseed")
const random2 = Random.make("myseed")

assert.equal(Effect.runSync(random1.next), Effect.runSync(random2.next))
```

**Signature**

```ts
export declare const make: <A>(seed: A) => Random
```
