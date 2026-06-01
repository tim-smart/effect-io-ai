Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isError

Checks whether a value is an `Error`.

**When to use**

Use when you need a `Predicate` guard for errors caught from unknown sources.

**Details**

Uses `instanceof Error`.

**Example** (Guard error)

```ts
import { Predicate } from "effect"

const data: unknown = new Error("boom")

console.log(Predicate.isError(data))
```

**See**

- `isUnknown`

**Signature**

```ts
declare const isError: (input: unknown) => input is Error
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1254)

Since v2.0.0