# make

Creates a `BigDecimal` from a `bigint` value and a scale.

To import and use `make` from the "BigDecimal" module:

```ts
import * as BigDecimal from 'effect/BigDecimal'

// Can be accessed like this
BigDecimal.make
```

**Signature**

```ts
export declare const make: (value: bigint, scale: number) => BigDecimal
```
