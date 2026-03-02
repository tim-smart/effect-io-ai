Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.fromString

Converts a string to a `bigint`.

If the string is empty or contains characters that cannot be converted into a
`bigint`, it returns `undefined`.

**Example**

```ts
import { BigInt } from "effect"

BigInt.fromString("42") // 42n
BigInt.fromString(" ") // undefined
BigInt.fromString("a") // undefined
```

**Signature**

```ts
declare const fromString: (s: string) => bigint | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L644)

Since v2.4.12