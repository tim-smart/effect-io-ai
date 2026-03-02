Package: `effect`<br />
Module: `Flag`<br />

## Flag.map

Transforms the parsed value of a flag using a mapping function.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

// Convert string to uppercase
const nameFlag = Flag.string("name").pipe(
  Flag.map((name) => name.toUpperCase())
)

// Convert port to URL
const urlFlag = Flag.integer("port").pipe(
  Flag.map((port) => `http://localhost:${port}`)
)
```

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): (self: Flag<A>) => Flag<B>; <A, B>(self: Flag<A>, f: (a: A) => B): Flag<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L563)

Since v4.0.0