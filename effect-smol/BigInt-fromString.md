Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.fromString

Converts a string to a `bigint`.

If the string is empty or contains characters that cannot be converted into a
`bigint`, it returns `Option.none()`.

**Example**

```ts
import { BigInt } from "effect"

BigInt.fromString("42") // Option.some(42n)
BigInt.fromString(" ") // Option.none()
BigInt.fromString("a") // Option.none()
```

**Signature**

```ts
declare const fromString: (s: string) => Option.Option<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L648)

Since v2.4.12