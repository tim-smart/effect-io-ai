Package: `effect`<br />
Module: `Array`<br />

## Array.allocate

Creates a new `Array` of the specified length.

**Example**

```ts
import { Array } from "effect"

const result = Array.allocate<number>(3)
console.log(result) // [ <3 empty items> ]
```

**Signature**

```ts
declare const allocate: <A = never>(n: number) => Array<A | undefined>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L80)

Since v2.0.0