Package: `effect`<br />
Module: `Array`<br />

## Array.fromNullishOr

Converts a nullable value to an array: `null`/`undefined` becomes `[]`,
anything else becomes `[value]`.

**Example** (Nullable to array)

```ts
import { Array } from "effect"

console.log(Array.fromNullishOr(1)) // [1]
console.log(Array.fromNullishOr(null)) // []
console.log(Array.fromNullishOr(undefined)) // []
```

**See**

- `liftNullishOr` — lift a nullable-returning function
- `fromOption` — convert from Option

**Signature**

```ts
declare const fromNullishOr: <A>(a: A) => Array<NonNullable<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3517)

Since v2.0.0