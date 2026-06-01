Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isUint8Array

Checks whether a value is a `Uint8Array`.

**When to use**

Use when you need a `Predicate` runtime guard for binary data.

**Details**

Uses `instanceof Uint8Array`.

**Example** (Guard Uint8Array)

```ts
import { Predicate } from "effect"

const data: unknown = new Uint8Array([1, 2])

console.log(Predicate.isUint8Array(data))
```

**See**

- `isIterable`
- `isSet`

**Signature**

```ts
declare const isUint8Array: (input: unknown) => input is Uint8Array
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1284)

Since v2.0.0