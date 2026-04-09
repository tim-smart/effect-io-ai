Package: `effect`<br />
Module: `Flag`<br />

## Flag.filterMap

Transforms and filters a flag value, failing with a custom error if the transformation returns None.

**Example**

```ts
import { Option } from "effect"
import { Flag } from "effect/unstable/cli"

// Parse positive integers only
const positiveInt = Flag.integer("count").pipe(
  Flag.filterMap(
    (n) => n > 0 ? Option.some(n) : Option.none(),
    (n) => `Expected positive integer, got ${n}`
  )
)

// Parse valid email addresses
const emailFlag = Flag.string("email").pipe(
  Flag.filterMap(
    (email) => email.includes("@") ? Option.some(email) : Option.none(),
    (email) => `Invalid email address: ${email}`
  )
)
```

**Signature**

```ts
declare const filterMap: { <A, B>(f: (a: A) => Option.Option<B>, onNone: (a: A) => string): (self: Flag<A>) => Flag<B>; <A, B>(self: Flag<A>, f: (a: A) => Option.Option<B>, onNone: (a: A) => string): Flag<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L740)

Since v4.0.0