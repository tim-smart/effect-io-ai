Package: `effect`<br />
Module: `Flag`<br />

## Flag.filter

Filters a flag value based on a predicate, failing with a custom error if the predicate returns false.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

// Ensure port is in valid range
const portFlag = Flag.integer("port").pipe(
  Flag.filter(
    (port) => port >= 1 && port <= 65535,
    (port) => `Port ${port} is out of range (1-65535)`
  )
)

// Ensure non-empty string
const nameFlag = Flag.string("name").pipe(
  Flag.filter(
    (name) => name.trim().length > 0,
    () => "Name cannot be empty"
  )
)
```

**Signature**

```ts
declare const filter: { <A>(predicate: (a: A) => boolean, onFalse: (a: A) => string): (self: Flag<A>) => Flag<A>; <A>(self: Flag<A>, predicate: (a: A) => boolean, onFalse: (a: A) => string): Flag<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L777)

Since v4.0.0