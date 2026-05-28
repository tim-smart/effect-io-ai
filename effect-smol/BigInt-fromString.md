Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.fromString

Parses a string into a `bigint` safely.

**When to use**

Use to parse a string as a `bigint` without throwing on invalid input.

**Details**

If the string is empty or contains characters that cannot be converted into a
`bigint`, it returns `Option.none()`.

**Example** (Parsing strings as bigints)

```ts
import { BigInt } from "effect"

BigInt.fromString("42") // Option.some(42n)
BigInt.fromString(" ") // Option.none()
BigInt.fromString("a") // Option.none()
```

**See**

- `BigInt` for native constructor coercion that throws on invalid input

**Signature**

```ts
declare const fromString: (s: string) => Option.Option<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L927)

Since v2.4.12